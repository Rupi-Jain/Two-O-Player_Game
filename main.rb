require "./Player"
require "./Game"

player1 = Player.new("Bob")
player2 = Player.new("Jane")

game = Game.new(player1, player2)
game.setScore(3)
game.startGame(player1)

while(!game.isDead())
  game.askQuestion()
  game.isAlive() 
  game.getScore() 
  game.endGame()
  current_player = game.newGame()
end

