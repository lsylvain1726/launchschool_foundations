# exercise 1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]


# flintstones_hash = {}
# counter = 0

# loop do
#	break if counter == flintstones.size
#	names = flintstones[counter]
#	current_index = counter
#	flintstones_hash[names] = current_index
#	counter += 1
#end

#puts flintstones_hash


flintstones_hash = {}
flintstones.each_with_index do |name, index|
	flintstones_hash[name] = index
end	


puts flintstones_hash
