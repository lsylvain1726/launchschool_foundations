# exercise 2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#ages_value = ages.values
#counter = 0
#total_ages = 0

#loop do
#	break if counter == ages_value.size
#	 current_age = ages_value[counter]
#	 total_ages += current_age
#	 counter += 1
#end

total_ages = 0
ages.each {|_,age| total_ages += age }



puts total_ages