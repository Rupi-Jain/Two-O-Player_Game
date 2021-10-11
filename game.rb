class Game
  attr_accessor :player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  
  def setScore(score)
    @player1.score = score
    @player2.score = score
  end 

  def getScore()
    puts "#{@player1.name}: #{@player1.score}/3 vs #{@player2.name}: #{@player2.score}/3"
  end

  def startGame(player)
    @current_player = player
  end

  def askQuestion()
    @value1 = rand(1..10)
    @value2 = rand(1..10)
    puts "#{@current_player.name}: What does #{@value1} plus #{@value2} adds"
    @answer = gets.chomp
  end

  def isAlive()
    if ((@value1 + @value2) != @answer.to_i)
      @current_player.score = @current_player.score - 1
      puts "Seriously, No!"
    elsif
      puts "Yes! You are correct"
    end
  end

  def isDead()    
    if(@current_player.score == 0)
      return true
    end
    return false
  end

  def newGame()
    if(@current_player == @player1)      
      @current_player = @player2
    elsif
      @current_player = @player1
    end    
    return @current_player
  end

  def getWinner()
    if (@current_player == @player1)
      return @player2
    else
      return @player1
    end
  end

  def resetScore()
    @player1.score = 0
    @player2.score =0
  end

  def endGame()
    if(@current_player.score != 0)
      puts "......New Turn....."
    elsif
      @winner = getWinner()
      puts "#{@winner.name} wins with a score of #{@winner.score}/3"
      puts "-------Game Over--------"
      puts "Good Bye!"
      resetScore()
    end
  end

end