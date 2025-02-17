import asyncio
import random

from antlr4 import *


from dsl.generated.AsynchrGrammarLexer import AsynchrGrammarLexer
from dsl.generated.AsynchrGrammarParser import AsynchrGrammarParser
from dsl.generated.AsynchrGrammarVisitor import AsynchrGrammarVisitor

from dsl.game_state import Actor, GameState


class AsyncrInterpreter(AsynchrGrammarVisitor):
    def __init__(self, state: GameState):
        super().__init__()
        self.state = state

    async def execute(self, code):
        input_stream = InputStream(code)
        lexer = AsynchrGrammarLexer(input_stream)
        tokens = CommonTokenStream(lexer)
        parser = AsynchrGrammarParser(tokens)
        tree = parser.program()
        await self.visitProgram(tree)

    async def visitProgram(self, ctx):
        children = list(ctx.children)
        for node in children[:-3]:
            if isinstance(node, AsynchrGrammarParser.ContextContext):
                await self.visitContext(node)
            elif isinstance(node, AsynchrGrammarParser.SetContext):
                await self.visitSet(node)
        data_node = children[-2]
        d = await self.visitData(data_node)
        print(f"Result data => {d}")

    async def visitContext(self, ctx):
        c = ctx.getChild(0)
        rule_name = c.__class__.__name__
        if rule_name == 'Assignment_listContext':
            await self.visitAssignment_list(c)
        elif rule_name == 'Board_defContext':
            await self.visitBoard_def(c)
        elif rule_name == 'Wall_defContext':
            await self.visitWall_def(c)
        elif rule_name == 'Box_defContext':
            await self.visitBox_def(c)
        elif rule_name == 'Actor_defContext':
            await self.visitActor_def(c)

    async def visitAssignment_list(self, ctx):
        i=0
        while i < len(ctx.children):
            node = ctx.children[i]
            if isinstance(node, AsynchrGrammarParser.AssignmentContext):
                await self.visitAssignment(node)
                i+=3
            else:
                i+=1

    async def visitAssignment(self, ctx):
        var_name = ctx.ID().getText()
        d = await self.visitData(ctx.data())
        self.state.vars[var_name] = d
        print(f"Assignment: {var_name} = {d}")

    async def visitBoard_def(self, ctx):
        w = int(ctx.NUMBER(0).getText())
        h = int(ctx.NUMBER(1).getText())
        self.state.cols = w
        self.state.rows = h
        print(f"Board: {w} x {h}")

    async def visitWall_def(self, ctx):
        pos = await self.visitPosition(ctx.position())
        self.state.walls.add(pos)
        print(f"Wall at {pos}")

    async def visitBox_def(self, ctx):
        pos = await self.visitPosition(ctx.position())
        self.state.boxes.add(pos)
        print(f"Box at {pos}")

    async def visitActor_def(self, ctx):
        pos = await self.visitPosition(ctx.position())
        direction = ctx.direction().getText()
        actor = Actor(pos[0], pos[1], direction)
        name = "actor"+str(len(self.state.actors))
        self.state.actors[name] = actor
        print(f"Actor {name} at {pos} direction={direction}")

    async def visitPosition(self, ctx):
        x = float(ctx.NUMBER(0).getText())
        y = float(ctx.NUMBER(1).getText())
        return int(x), int(y)

    async def visitData(self, ctx):
        if ctx.NUMBER():
            return float(ctx.NUMBER().getText())
        if ctx.STRING():
            s=ctx.STRING().getText()
            return s[1:-1]
        if ctx.position():
            return await self.visitPosition(ctx.position())
        return None

    async def visitSet(self, ctx):
        nm = ctx.ID()
        if nm: print(f"Set name = {nm.getText()}")
        # flow_list
        flow_list_ctx = ctx.flow_list()
        await self.visitFlow_list(flow_list_ctx)

    async def visitFlow_list(self, ctx):
        flows = ctx.flow()
        tasks=[]
        for f in flows:
            tasks.append(self.visitFlow(f))
        await asyncio.gather(*tasks)

    async def visitFlow(self, ctx):
        nm=ctx.ID()
        if nm:
            print(f"Flow name={nm.getText()}")
        action_list_ctx = ctx.action_list()
        await self.visitAction_list(action_list_ctx)

    async def visitAction_list(self, ctx):
        acts = ctx.action()
        for a in acts:
            await self.visitAction(a)

    async def visitAction(self, ctx):
        c0 = ctx.getChild(0).getText()
        if ctx.command():
            varName = None
            if ctx.ID() and ctx.EQ():
                varName = ctx.ID().getText()
            cmd = ctx.command()
            await self.visitCommand(cmd, varName)
        elif ctx.probability_act():
            return await self.visitProbability_act(ctx.probability_act())
        elif ctx.conditional_act():
            return await self.visitConditional_act(ctx.conditional_act())
        elif ctx.wait_act():
            return await self.visitWait_act(ctx.wait_act())
        elif ctx.pause_act():
            return await self.visitPause_act(ctx.pause_act())
        elif ctx.loop_act():
            return await self.visitLoop_act(ctx.loop_act())
        elif ctx.repeat_act():
            return await self.visitRepeat_act(ctx.repeat_act())

    async def visitProbability_act(self, ctx):
        prob = float(ctx.prob.text)
        r = random.random()*100
        print(f"Probability {prob} => {r}")
        if r<prob:
            return await self.visitAction(ctx.action())

    async def visitConditional_act(self, ctx):
        condVal = await self.visitCondition(ctx.cond)
        if condVal:
            return await self.visitAction(ctx.then)

    async def visitWait_act(self, ctx):
        target = ctx.target.text
        print(f"Wait for {target} - skip (no sync)")

    async def visitPause_act(self, ctx):
        dur = float(ctx.time.text)
        print(f"Pause {dur}s")
        await asyncio.sleep(dur)

    async def visitLoop_act(self, ctx):
        while True:
            condVal = await self.visitCondition(ctx.cond)
            if not condVal: break
            await self.visitAction(ctx.body)

    async def visitRepeat_act(self, ctx):
        c= int(ctx.count.text)
        for _ in range(c):
            await self.visitAction(ctx.body)

    async def visitCondition(self, ctx):
        if ctx.ID():
            nm=ctx.ID().getText()
            return bool(self.state.vars.get(nm,0))
        else:
            d=await self.visitData(ctx.data())
            if isinstance(d, float):
                return d!=0
            if isinstance(d, str):
                return len(d)>0
            return bool(d)

    async def visitCommand(self, ctx, varName=None):
        first = ctx.getChild(0).getText()
        if ctx.ID():
            cmd = ctx.ID().getText()
            print(f"Command: {cmd}")
            if cmd in ["moveUp","moveDown","moveLeft","moveRight"]:
                # FIXME
                pass
            if varName: self.state.vars[varName] = cmd
        elif ctx.symbol_cmd():
            sym= ctx.symbol_cmd().getText()
            print(f"Symbol cmd: {sym}")
            await self.execute_symbol(sym)
        elif ctx.parallel_cmd():
            await self.visitParallel_cmd(ctx.parallel_cmd())
        elif ctx.sequence_cmd():
            await self.visitSequence_cmd(ctx.sequence_cmd())
        elif ctx.return_cmd():
            print("Return cmd - skip")
        return None

    async def visitParallel_cmd(self, ctx):
        acts = []
        i=3
        while i < len(ctx.children)-1:
            a=ctx.getChild(i)
            if isinstance(a, AsynchrGrammarParser.ActionContext):
                acts.append(a)
            i+=1
        tasks=[]
        for ac in acts:
            tasks.append(self.visitAction(ac))
        await asyncio.gather(*tasks)

    async def visitSequence_cmd(self, ctx):
        i=3
        while i< (len(ctx.children)-1):
            a=ctx.getChild(i)
            if isinstance(a, AsynchrGrammarParser.ActionContext):
                await self.visitAction(a)
            i+=1

    async def execute_symbol(self, sym):
        actor_key="actor0"
        if not self.state.actors:
            print("No actors found!")
            return
        # Возьмём первого
        actor_key=list(self.state.actors.keys())[0]
        actor=self.state.actors[actor_key]
        if sym=="ШАГ":
            actor.move_step(self.state)
        elif sym=="ПОВЕРНИ_НАЛЕВО":
            actor.turn_left()
        elif sym=="ПОВЕРНИ_НАПРАВО":
            actor.turn_right()
        elif sym=="ВЗЯТЬ":
            print("Pick up - not implemented")
        elif sym=="ОСТАВИТЬ":
            print("Drop - not implemented")