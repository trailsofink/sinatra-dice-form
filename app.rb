require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:index)
end
 
get("/process_roll") do
  @rolls = []
  @dice = params.fetch('dice').to_i
  @sides = params.fetch('sides').to_i

  @dice.times do
    result = rand(1..@sides)
    @rolls.push(result)
  end
  erb(:process_roll)
end
