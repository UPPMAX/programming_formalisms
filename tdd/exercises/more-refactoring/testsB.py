from tennis import TennisGame


# Convenience method to make player one win multiple balls
def player_1_wins_balls(game, number_of_balls):
    for i in range(number_of_balls):
        game.player_1_won()


# Convenience method to make player two win multiple balls
def player_2_wins_balls(game, number_of_balls):
    for i in range(number_of_balls):
        game.player_2_won()


def test_player_one_points_updated_correctly_from_0():
    game = TennisGame()
    result = game.player_1_won()
    assert result == '15 - 0'


def test_player_one_points_updated_correctly_from_15():
    game = TennisGame()
    game.player_1_won()
    result = game.player_1_won()
    assert result == '30 - 0'


def test_player_one_points_updated_correctly_from_30():
    game = TennisGame()
    player_1_wins_balls(game, 2)
    result = game.player_1_won()
    assert result == '40 - 0'


def test_player_one_gets_advantage_if_wins_point_at_forty_all():
    game = TennisGame()
    player_1_wins_balls(game, 3)
    player_2_wins_balls(game, 3)
    result = game.player_1_won()
    assert result == 'Advantage player 1'


def test_player_two_points_updated_correctly_from_0():
    game = TennisGame()
    result = game.player_2_won()
    assert result == '0 - 15'


def test_player_two_points_updated_correctly_from_15():
    game = TennisGame()
    game.player_2_won()
    result = game.player_2_won()
    assert result == '0 - 30'


def test_player_two_points_updated_correctly_from_30():
    game = TennisGame()
    player_2_wins_balls(game, 2)
    result = game.player_2_won()
    assert result == '0 - 40'


def test_player_two_gets_advantage_if_wins_point_at_forty_all():
    game = TennisGame()
    player_1_wins_balls(game, 3)
    player_2_wins_balls(game, 3)
    result = game.player_2_won()
    assert result == 'Advantage player 2'


def test_player_one_wins_if_has_40_to_0_and_wins_ball():
    game = TennisGame()
    player_1_wins_balls(game, 3)
    result = game.player_1_won()
    assert result == 'Game player 1'


def test_player_one_wins_if_has_40_to_15_and_wins_ball():
    game = TennisGame()
    player_1_wins_balls(game, 3)
    game.player_2_won()
    result = game.player_1_won()
    assert result == 'Game player 1'


def test_player_one_wins_if_has_40_to_30_and_wins_ball():
    game = TennisGame()
    player_1_wins_balls(game, 3)
    player_2_wins_balls(game, 2)
    result = game.player_1_won()
    assert result == 'Game player 1'


def test_player_one_wins_if_has_advantage_and_wins_ball():
    game = TennisGame()
    player_1_wins_balls(game, 3)
    player_2_wins_balls(game, 3)
    game.player_1_won()
    result = game.player_1_won()
    assert result == 'Game player 1'


def test_deuce_if_has_player_has_advantage_and_loses_ball():
    game = TennisGame()
    player_1_wins_balls(game, 3)
    player_2_wins_balls(game, 3)
    game.player_1_won()
    result = game.player_2_won()
    assert result == 'Deuce'


def test_player_two_wins_if_has_40_to_0_and_wins_ball():
    game = TennisGame()
    player_2_wins_balls(game, 3)
    result = game.player_2_won()
    assert result == 'Game player 2'


def test_player_two_wins_if_has_40_to_15_and_wins_ball():
    game = TennisGame()
    player_2_wins_balls(game, 3)
    game.player_1_won()
    result = game.player_2_won()
    assert result == 'Game player 2'


def test_player_two_wins_if_has_40_to_30_and_wins_ball():
    game = TennisGame()
    player_2_wins_balls(game, 3)
    player_1_wins_balls(game, 2)
    result = game.player_2_won()
    assert result == 'Game player 2'


def test_player_two_wins_if_has_advantage_and_wins_ball():
    game = TennisGame()
    player_1_wins_balls(game, 3)
    player_2_wins_balls(game, 3)
    game.player_2_won()
    result = game.player_2_won()
    assert result == 'Game player 2'


def test_15_to_15_is_displayed_15_all():
    game = TennisGame()
    game.player_1_won()
    result = game.player_2_won()
    assert result == '15 all'


def test_30_to_30_is_displayed_30_all():
    game = TennisGame()
    game.player_1_won()
    player_2_wins_balls(game, 2)
    result = game.player_1_won()
    assert result == '30 all'


def test_40_to_40_is_displayed_deuce():
    game = TennisGame()
    player_1_wins_balls(game, 2)
    player_2_wins_balls(game, 3)
    result = game.player_1_won()
    assert result == 'Deuce'
