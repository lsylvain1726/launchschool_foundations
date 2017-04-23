# exercise7.rb

# one argurment that is a positive interger
# string of 1s and 0s always starting with 1
# length of string is the same as the integer that is passed in

# 6 is passed in as an integer
# the length of the string will be 5
# the first will be 1
# the second character will be 0
# the third character will be 1
# the fourth character will be 0
# the fifth character will 1
# the sixth character will be 0

# create a new string
# odd index will be 1
# even index will be 0
# length of string will equal argument passed in

def stringy(num)
	arr = []

	num.times do |index|
		number = index.even? ? 1 : 0
		arr << number
	end	
	arr.join
end	


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'



def stringy(num)
	str = []
	index = 0

	loop do
		if index.even?
			str << '1'
			elsif
			str << '0'	
		end	
		index += 1
		break if index == num
	end

	str.join('')

end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

