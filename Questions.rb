class Question
  attr_reader :num1, :num2, :answer;

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def verify_answer(player)
    if(@input_answer == @answer)
      puts "Manz has quick maffs"
    else
      puts "Ruh roh"
      player.lostLife
    end
  end

  def ask(player)
    
    puts "Your turn #{player.name} : What does #{num1} + #{num2} equal?"

    @input_answer = $stdin.gets.chomp.to_i

    verify_answer(player)
  end



end