#exercise6.rb

# method takes two arguments
# returns true if one argument is true
# returns false otherwise

# if both are true it should return false
# if both are false it should return false

def xor?(num1, num2)
	return false if num1 == true && num2 == true
	return false if num1 == false && num2 == false
  return true	
end


puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)


