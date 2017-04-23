#exercise4.rb

# Ask the user for there age
# Ask the user at what age they would like to retire?
# calculate what year they will retire in



puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
age_retire = gets.chomp.to_i

current_year = Time.now.year
years_to_retirement = age_retire - age
year_of_retirement = current_year + years_to_retirement

puts "It's #{current_year}. You will retire in #{year_of_retirement}"
puts "You only have #{years_to_retirement} years of work to go"
