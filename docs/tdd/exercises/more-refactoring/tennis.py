class TennisGame:

    def __init__(self):
        self.points1 = 0
        self.points2 = 0

    def player_1_won(self):
        if self.points1 == 'advantage':
            return 'Game player 1'
        if self.points2 == 'advantage':
            return 'Deuce'
        if self.points1 == 40 and self.points2 < 40:
            return 'Game player 1'
        if self.points1 == 40 and self.points2 == 40:
            self.points1 = 'advantage'
        else:
            self.points1 = self.increment_points(self.points1)
        return self.generate_score()

    def player_2_won(self):
        if self.points2 == 'advantage':
            return 'Game player 2'
        if self.points1 == 'advantage':
            return 'Deuce'
        if self.points2 == 40 and self.points1 < 40:
            return 'Game player 2'
        if self.points1 == 40 and self.points2 == 40:
            self.points2 = 'advantage'
        else:
            self.points2 = self.increment_points(self.points2)
        return self.generate_score()

    @staticmethod
    def increment_points(points):
        if points == 0:
            return 15
        if points == 15:
            return 30
        if points == 30:
            return 40

    def generate_score(self):
        if self.points1 == 'advantage':
            return 'Advantage player 1'
        if self.points2 == 'advantage':
            return 'Advantage player 2'
        if self.points1 == self.points2:
            if self.points1 == 40:
                return "Deuce"
            else:
                return f"{self.points1} all"
        else:
            return f"{self.points1} - {self.points2}"
