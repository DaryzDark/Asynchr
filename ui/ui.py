import asyncio
import threading
import tkinter as tk
from tkinter import ttk

from antlr4.CommonTokenStream import CommonTokenStream
from antlr4.InputStream import InputStream

from dsl.generated.AsynchrGrammarLexer import AsynchrGrammarLexer
from dsl.generated.AsynchrGrammarParser import AsynchrGrammarParser
from dsl.interpreter import AsyncrInterpreter, GameState


class AsyncrUI(tk.Tk):
    def __init__(self):
        super().__init__()
        self.editor = None
        self.title("Asyncr Visualizer")

        self.state = GameState()

        self.interpreter = AsyncrInterpreter(self.state)

        self.cell_size = 40
        self.running = False

        self.loop = asyncio.new_event_loop()
        self.create_widgets()

        self.protocol("WM_DELETE_WINDOW", self.on_close)

        self.thread = threading.Thread(target=self.start_loop, daemon=True)
        self.thread.start()

    def start_loop(self):
        asyncio.set_event_loop(self.loop)
        self.loop.run_forever()

    def create_widgets(self):
        self.editor = tk.Text(self, wrap=tk.WORD, font=('Courier', 12))
        self.editor.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=5, pady=5)

        right_panel = tk.Frame(self)
        right_panel.pack(side=tk.RIGHT, fill=tk.BOTH)

        self.canvas = tk.Canvas(right_panel, bg='white', width=400, height=400)
        self.canvas.pack(pady=10, padx=10)

        control_frame = tk.Frame(right_panel)
        control_frame.pack(pady=5)

        ttk.Button(control_frame, text="Run",
                   command=self.start).pack(side=tk.LEFT, padx=5)
        ttk.Button(control_frame, text="Stop",
                   command=self.stop).pack(side=tk.LEFT)

        self.status = ttk.Label(right_panel, text="Ready")
        self.status.pack(pady=5)

    def draw_grid(self):
        self.canvas.delete("grid")
        for x in range(self.state.cols):
            for y in range(self.state.rows):
                x0 = x * self.cell_size
                y0 = y * self.cell_size
                self.canvas.create_rectangle(
                    x0, y0,
                    x0 + self.cell_size,
                    y0 + self.cell_size,
                    outline="#f0f0f0",
                    tags="grid"
                )

    def draw_actors(self):
        self.canvas.delete("actor")
        for name, actor in self.state.actors.items():
            if not (0 <= actor.x < self.state.cols and 0 <= actor.y < self.state.rows):
                continue
            cx = actor.x * self.cell_size + self.cell_size//2
            cy = actor.y * self.cell_size + self.cell_size//2
            r = self.cell_size//3
            self.canvas.create_oval(cx-r, cy-r, cx+r, cy+r,
                                    fill="#ff4444", outline="#cc0000",
                                    tags="actor")

    def update_display(self):
        if self.running:
            self.draw_grid()
            self.draw_actors()
            self.status.config(text="Running")
            self.after(200, self.update_display)
        else:
            self.status.config(text="Stopped")

    def start(self):
        if not self.running:
            self.running = True
            code = self.editor.get("1.0", tk.END)
            asyncio.run_coroutine_threadsafe(
                self.interpreter.execute(code),
                self.loop
            )
            self.update_display()

    def stop(self):
        self.running = False
        self.state.running = False

    def on_close(self):
        self.stop()
        self.loop.call_soon_threadsafe(self.loop.stop)
        self.destroy()

if __name__ == "__main__":
    app = AsyncrUI()
    sample_code = """
Доска=10*10;
Стена=(3,3);
Исполнитель=(5,5)ВНИЗ;
set1={
   flowA={
      actor0=ШАГ;
      ПАУЗА 1;
      ПОВТОРИТЬ ШАГ 4;
   }
};
? "OK"
"""
    app.editor.insert(tk.END, sample_code.strip())
    app.mainloop()