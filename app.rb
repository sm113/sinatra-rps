require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

##function to generate random move
def generate_move
  n = rand(1..3)
  if n == 1
    return "rock"
  elsif n == 2
    return "paper"
  elsif n == 3
    return "scissors"
  end
end

##rock page
get("/rock") do
  move = generate_move
  @opp_move = "They played #{move}!"
  @result = "We "
  if move == "rock"
    @result += "tied! Try again!"
  elsif move == "paper"
    @result += "Lost! Maybe next time!"
  elsif move == "scissors"
    @result += "Won! Woohoo!"
  end
  erb(:rock)
end


##paper page
get("/paper") do
  move = generate_move
  @opp_move = "They played #{move}!"
  @result = "We "
  if move == "rock"
    @result += "won! Woohoo!"
  elsif move == "paper"
    @result += "tied! Try again!"
  elsif move == "scissors"
    @result += "lost! Maybe next time!"
  end
  erb(:paper)
end

##scissors page
get("/scissors") do
  move = generate_move
  @opp_move = "They played #{move}!"
  @result = "We "
  if move == "rock"
    @result += "lost! Maybe next time!"
  elsif move == "paper"
    @result += "won! Woohoo!"
  elsif move == "scissors"
    @result += "tied! Try again!"
  end
  erb(:scissors)
end
