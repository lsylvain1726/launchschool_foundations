# exercise2.rb

# method takes year as argument
# returns century
# return value should be string that begins with century number
# return value ends with st, nd, rd, or th
# new centuries begin in years that end with 01
# example 1901 to 2000 comprise 20th century


# figure out century
# divide year by 100 and remove decimals
# add 1
require 'pry'

def century(year)
century_num = (year / 100) + 1
century_num -= 1 if year % 100 == 0


ending = case century_num % 100
		 when 11, 12, 13 then 'th'
		 else	
			 case century_num % 10
				when 1 then "st"
				when 2 then "nd"
				when 3 then "rd"
				else "th"
			  end		
		end	

"#{century_num}#{ending}"
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)




