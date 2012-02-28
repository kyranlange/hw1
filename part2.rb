class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  
  player1strat = game[0][1];
  player2strat = game[1][1];
  printf (player1strat + '\n');
  printf (player2strat + '\n');
  
  return game[0];
end

rps_game_winner([["Armando","P"] ["Dave","S"]])
