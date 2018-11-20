class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    result = 0
	    case player1
	    	when "rock"
		      puts "HERE"
		      result = 0 if player2 == "rock"
		      result = 1 if player2 == "scissors"
		      result = 2 if player2 == "paper"
	    	when "paper"
		      result = 0 if player2 == "paper"
		      result = 1 if player2 == "rock"
		      result = 2 if player2 == "scissors"
	    	when "scissors"
		      result = 0 if player2 == "scissors"
		      result = 1 if player2 == "paper"
		      result = 2 if player2 == "rock"
		end
	result == 0 ? "Draw!" : result == 1 ? "Player 1 won!" : "Player 2 won!"
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a?(String)
      winner(tournament[0],tournament[1])
    else
      winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
    end
  end

end
