require './Players'
require './Questions'

class Turn
  def initialize
    puts "Who is the first player?"
    player1_name = $stdin.gets.chomp
    puts "Who is the second player?"
    player2_name = $stdin.gets.chomp

    @player1 = Players.new(player1_name)
    @player2 = Players.new(player2_name)

    puts "Welcome #{player1_name} and #{player2_name}! You will now face off in the most intense Math game!!"
  end

  def score
    puts "#{@player1.name} has #{@player1.lives}/3 VS #{@player2.name} who has #{@player2.lives}/3"
    
    puts "***** NEXT ROUND ******"
  end

  def game_over
    if(@player1.youDead)
      puts "#{@player2.name} establishes their superiority to #{@player1.name} while still having #{@player1.lives}/3 lives left!!"
    else
      puts "#{@player1.name} establishes their superiority to #{@player2.name} while still having #{@player2.lives}/3 lives left!!"
    end

    puts "Th-th-th-that's all, folks! 🐷"
    puts "Smell ya later!"

  end


  def player_turns(current_player)
    if(current_player == @player1)
      current_player = @player2
    else
      current_player = @player1
    end

    return current_player
  end

  def game_continues
    (@player1.youDead || @player2.youDead) == false
  end

  def begin
    current_player = @player1
    while(game_continues)

      question = Question.new

      question.ask(current_player)

      score

      current_player = player_turns(current_player)
    end

    game_over
  end


end
