class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
    
  p1 = game[0]
  p2 = game[1]
  
  raise NoSuchStrategyError unless p1[1] =~ /[RPS]/i
  raise NoSuchStrategyError unless p2[1] =~ /[RPS]/i
  
  p1strat = p1[1].downcase
  p2strat = p2[1].downcase
  
  if p2strat == 'r' and p1strat == 's'
    return p2
  elsif p2strat == 'p' and p1strat == 'r'
    return p2
  elsif p2strat == 's' and p1strat == 'p'
    return p2
  else 
    return p1
  end
end


def rps_tournament_winner(tournament)
  if tournament[0][0].is_a?(String)
    return rps_game_winner([tournament[0], tournament[1]])
  else 
    return rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
  end
end
