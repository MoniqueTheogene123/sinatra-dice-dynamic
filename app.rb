require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/2/6") do
  @rolls = []

  2.times do
    die = rand(1..6)

    @rolls.push(die)
  end

  erb(:two_six)
end

get("/dice/2/10") do
  @rolls = []

  2.times do
    die = rand(1..10)

    @rolls.push(die)
  end

  erb(:two_ten)
end

get("/dice/1/20") do
  @rolls = []

  1.times do
    die = rand(1..20)

    @rolls.push(die)
  end

  erb(:one_twenty)
end

get("/dice/5/4") do
  @rolls = []

  5.times do
    die = rand(1..4)

    @rolls.push(die)
  end

  erb(:five_four)
end

get("/dice/6/19") do
  @rolls = []

  6.times do
    die = rand(1..19)

    @rolls.push(die)
  end

  erb(:six_nineteen)
end

get("/dice/20/4") do
  @rolls = []

  20.times do
    die = rand(1..4)

    @rolls.push(die)
  end

  erb(:twenty_four)
end

get("/dice/42/1337") do
  @rolls = []

  42.times do
    die = rand(1..1337)

    @rolls.push(die)
  end

  erb(:fortytwo_onethreethreeseven)
end
