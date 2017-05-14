# exercise8.rb

# method takes and array of integers
# integers between 0 and 19
# returns array of those integers sorted based on english words for each number
# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

ARR_ENGLISH = [
"zero", "one", "two", "three", 
"four", "five", "six", "seven", 
"eight", "nine", "ten", "eleven", 
"twelve", "thirteen", "fourteen", 
"fifteen", "sixteen", "seventeen", 
"eighteen", "nineteen"
]


def alphabetic_number_sort(arr)
	arr.sort_by do |num|
	ARR_ENGLISH[num]
	end
end	

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# sort_by! would mutate the original array

HASH_ENGLISH = {0=>"zero", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen"}

def alphabetic_number_sort(arr)

	sorted_numbers = arr.map { |num| HASH_ENGLISH[num] }.sort
	inverted_hash = HASH_ENGLISH.invert
	sorted_numbers.map { |num| inverted_hash[num] }

end	

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]






