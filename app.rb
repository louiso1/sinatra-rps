require "sinatra"
require "sinatra/reloader"

choices = ["Rock", "Paper", "Scissors"]

get("/") do
  erb(:main_page)
end

get("/rock") do
  @computer_result = choices.sample

  if @computer_result == "Rock"
    @outcome = "We tied!"
  elsif @computer_result == "Paper"
    @outcome = "We lost!"
  elsif @computer_result == "Scissors"
    @outcome = "We win!"
  end
  erb(:rock)
end

get("/scissors") do
  @computer_result = choices.sample

  if @computer_result == "Rock"
    @outcome = "We lost!"
  elsif @computer_result == "Paper"
    @outcome = "We win!"
  elsif @computer_result == "Scissors"
    @outcome = "We tied!"
  end
  erb(:scissors)
end

get("/paper") do
  @computer_result = choices.sample

  if @computer_result == "Rock"
    @outcome = "We win!"
  elsif @computer_result == "Paper"
    @outcome = "We tied!"
  elsif @computer_result == "Scissors"
    @outcome = "We lost!"
  end
  erb(:paper)
end
