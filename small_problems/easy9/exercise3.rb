# exercise3.rb

# method takes a number
# if argument is positive number then return a negative number
# if argument is 0 or negative, return the original number



def negative(num)
	num > 0 ? -num : num
end	

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0