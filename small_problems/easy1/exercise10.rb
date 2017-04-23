# exercise10.rb

# method takes two arguments
# argument one is a positive integer
# argument two is a boolean
# calculates the bonus for a given salary
# if boolean is true the bonus should be half of the salary
# if the boolena is false the bonus should be 0

# if true bonus is num / 2
# if false bonus is 0

def calculate_bonus(num, boolean)
	if boolean == true
		bonus = num / 2
	else
		bonus = 0
	end
	bonus	
end	

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

def calculate_bonus(num, bonus)
	bonus ? (num / 2) : 0	
end	

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000



