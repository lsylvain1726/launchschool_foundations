#exercise4.rb

# iterate through array
# count each element that are the same
# output element name and the number of occurrences
# figure out if car == car


def count_occurrences(array)
	occurences = {}

	array.each do |element|
		occurences[element] = array.count(element)
	end

	occurences.each do |element, count|
		puts "#{element} => #{count}"
	end	
end

count_occurrences(vehicles)
