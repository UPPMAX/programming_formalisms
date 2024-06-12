from tennis import TennisGame


def test_player_one_points_updated_correctly_from_0():
    game = TennisGame()
    game.player_1_won()
    assert game.points1 == 15


def test_player_one_points_updated_correctly_from_15():
    game = TennisGame()
    game.points1 = 15
    game.player_1_won()
    assert game.points1 == 30


def test_player_one_points_updated_correctly_from_30():
    game = TennisGame()
    game.points1 = 30
    game.player_1_won()
    assert game.points1 == 40


def test_player_one_gets_advantage_if_wins_point_at_forty_all():
    game = TennisGame()
    game.points1 = 40
    game.points2 = 40
    game.player_1_won()
    assert game.points1 == 'advantage'


def test_player_two_points_updated_correctly_from_0():
    game = TennisGame()
    game.player_2_won()
    assert game.points2 == 15


def test_player_two_points_updated_correctly_from_15():
    game = TennisGame()
    game.points2 = 15
    game.player_2_won()
    assert game.points2 == 30


def test_player_two_points_updated_correctly_from_30():
    game = TennisGame()
    game.points2 = 30
    game.player_2_won()
    assert game.points2 == 40


def test_player_two_gets_advantage_if_wins_point_at_forty_all():
    game = TennisGame()
    game.points1 = 40
    game.points2 = 40
    game.player_2_won()
    assert game.points2 == 'advantage'


def test_player_one_wins_if_has_40_to_0_and_wins_ball():
    game = TennisGame()
    game.points1 = 40
    game.points2 = 0
    result = game.player_1_won()
    assert result == 'Game player 1'


def test_player_one_wins_if_has_40_to_15_and_wins_ball():
    game = TennisGame()
    game.points1 = 40
    game.points2 = 15
    result = game.player_1_won()
    assert result == 'Game player 1'


def test_player_one_wins_if_has_40_to_30_and_wins_ball():
    game = TennisGame()
    game.points1 = 40
    game.points2 = 30
    result = game.player_1_won()
    assert result == 'Game player 1'


def test_player_one_wins_if_has_advantage_and_wins_ball():
    game = TennisGame()
    game.points1 = 'advantage'
    result = game.player_1_won()
    assert result == 'Game player 1'


def test_deuce_if_has_player_has_advantage_and_loses_ball():
    game = TennisGame()
    game.points1 = 'advantage'
    result = game.player_2_won()
    assert result == 'Deuce'


def test_player_two_wins_if_has_40_to_0_and_wins_ball():
    game = TennisGame()
    game.points1 = 0
    game.points2 = 40
    result = game.player_2_won()
    assert result == 'Game player 2'


def test_player_two_wins_if_has_40_to_15_and_wins_ball():
    game = TennisGame()
    game.points1 = 15
    game.points2 = 40
    result = game.player_2_won()
    assert result == 'Game player 2'


def test_player_two_wins_if_has_40_to_30_and_wins_ball():
    game = TennisGame()
    game.points1 = 30
    game.points2 = 40
    result = game.player_2_won()
    assert result == 'Game player 2'


def test_player_two_wins_if_has_advantage_and_wins_ball():
    game = TennisGame()
    game.points2 = 'advantage'
    result = game.player_2_won()
    assert result == 'Game player 2'


def test_15_to_15_is_displayed_15_all():
    game = TennisGame()
    game.points1 = 15
    game.points2 = 0
    result = game.player_2_won()
    assert result == '15 all'


def test_30_to_30_is_displayed_30_all():
    game = TennisGame()
    game.points1 = 15
    game.points2 = 30
    result = game.player_1_won()
    assert result == '30 all'


def test_40_to_40_is_displayed_deuce():
    game = TennisGame()
    game.points1 = 30
    game.points2 = 40
    result = game.player_1_won()
    assert result == 'Deuce'


def test_increment_score_from_0():
    result = TennisGame.increment_points(0)
    assert result == 15


def test_increment_score_from_15():
    result = TennisGame.increment_points(15)
    assert result == 30


def test_increment_score_from_30():
    result = TennisGame.increment_points(30)
    assert result == 40
