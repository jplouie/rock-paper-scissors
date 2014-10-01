require "rock_paper_scissors/version"

module RockPaperScissors
  def self.play(player1, player2)
    if player1[:move] && player2[:move]
      winner = self.evaluate(player1[:move], player2[:move])
      if winner == 2
        if player2[:name]
          puts "#{player2[:name]} wins!"
          return player2[:name]
        else
          puts 'Player 2 wins!'
          return :player2
        end
      elsif winner == 1
        if player1[:name]
          puts "#{player1[:name]} wins!"
          return player1[:name]
        else
          puts 'Player 1 wins!'
          return :player1
        end
      elsif winner == 0
        puts "It's a tie!!"
        return :tie
      else
        puts 'Invalid move!'
        return false
      end
    else
      puts 'Player 1 and Player 2 must both make a move!'
      return false
    end
  end

  def self.evaluate(move1, move2)
    if move1 == 'rock'
      if move2 == 'paper'
        return 2
      elsif move2 == 'scissors'
        return 1
      elsif move2 == 'rock'
        return 0
      else
        return false
      end
    elsif move1 == 'paper'
      if move2 == 'scissors'
        return 2
      elsif move2 == 'rock'
        return 1
      elsif move2 == 'paper'
        return 0
      else
        return false
      end
    elsif move1 == 'scissors'
      if move2 == 'rock'
        return 2
      elsif move2 == 'paper'
        return 1
      elsif move2 == 'scissors'
        return 0
      else
        return false
      end
    end
  end
end
