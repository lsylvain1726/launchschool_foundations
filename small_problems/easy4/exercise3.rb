# exercise3.rb

# leap years occur in every year that is evenly divisible by 4
# leap year = year % 4 == 0
# doe not occur if the year is also divisible by 100
# exception: no_leap_year year % 100 == 0

# method takes any year greater than 0
# returns true if year is leap year

def leap_year?(year)
	if year % 400 == 0 
		true
	elsif year % 100 == 0 
		false
	else
		year % 4 == 0	
	end
end	



puts leap_year?(2016) 
puts leap_year?(2015) 
puts leap_year?(2100) 
puts leap_year?(2400) 
puts leap_year?(240000) 
puts leap_year?(240001) 
puts leap_year?(2000) 
puts leap_year?(1900) 
puts leap_year?(1752) 
puts leap_year?(1700) 
puts leap_year?(1) 
puts leap_year?(100)
puts leap_year?(400) 



def leap_year?(year)
	if year % 4 != 0
		false
	elsif year % 100 != 0
		true
	else 
		year % 400 == 0 	
	end
end

puts leap_year?(2016) 
puts leap_year?(2015) 
puts leap_year?(2100) 
puts leap_year?(2400) 
puts leap_year?(240000) 
puts leap_year?(240001) 
puts leap_year?(2000) 
puts leap_year?(1900) 
puts leap_year?(1752) 
puts leap_year?(1700) 
puts leap_year?(1) 
puts leap_year?(100)
puts leap_year?(400) 



