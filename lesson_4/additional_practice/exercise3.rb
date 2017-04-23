# exercise3.rb

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }


#young_people = {}
#ages_key = ages.keys
#counter = 0

#loop do
#	break if counter == ages_key.size
#	current_age_key = ages_key[counter]
#	current_age_value = ages[current_age_key]
#	if current_age_value < 100
#		young_people[current_age_key] = current_age_value
#	end
#	counter += 1	
#end
#puts young_people

ages.delete_if { |name, age| age > 100 }

puts ages



