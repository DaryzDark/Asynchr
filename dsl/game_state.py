class GameState:
    def __init__(self):
        self.rows = 10
        self.cols = 10
        self.walls = set()
        self.boxes = set()
        self.actors = {}
        self.vars = {}
        self.running = True


class Actor:
    directions = {
        'ВВЕРХ': (0, -1),
        'ВНИЗ': (0, 1),
        'ВЛЕВО': (-1, 0),
        'ВПРАВО': (1, 0)
    }

    def __init__(self, x, y, direction='ВНИЗ'):
        self.x = x
        self.y = y
        self.direction = direction

    def move_step(self, game_state):
        dx, dy = self.directions.get(self.direction, (0,0))
        nx = self.x + dx
        ny = self.y + dy
        if 0 <= nx < game_state.cols and 0 <= ny < game_state.rows:
            if (nx, ny) not in game_state.walls:
                self.x, self.y = nx, ny

    def turn_left(self):
        order = ['ВВЕРХ','ВПРАВО','ВНИЗ','ВЛЕВО']
        idx = order.index(self.direction)
        self.direction = order[(idx - 1) % 4]

    def turn_right(self):
        order = ['ВВЕРХ','ВПРАВО','ВНИЗ','ВЛЕВО']
        idx = order.index(self.direction)
        self.direction = order[(idx + 1) % 4]
