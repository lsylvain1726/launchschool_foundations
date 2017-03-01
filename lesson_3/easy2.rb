# easy2.rb

# question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.has_key?('Spot')


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?('Spot')

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.member?('Spot')

# question 2
munsters_description = "The Munsters are creepy in a good way."
munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!

# question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

# question 4

advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")

advice = "Few things in life are as important as house training your pet dinosaur."
advice.match("Dino")

# question 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#question 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

# question 7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat( ["Dino", "Hoppy"])

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino", "Hoppy")

# question 8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!("Few things in life are as important as ")

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice("Few things in life are as important as ")

# question 9

statement = "The Flintstones Rock!"
statement.count('t')

# question 10

title = "Flintstone Family Members"
title.center(50)













