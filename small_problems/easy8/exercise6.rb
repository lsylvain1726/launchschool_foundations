# exercise6.rb

# method takes two arguments
# first argument is a starting number
# second argument is an ending number
# print ot all numbers between the two numbers
# except if number is divisible by 3, print "Fizz"
# if number is divisible by 5, print buzz
# if number is divisible by 3 and 5 print "FizzBuzz"


def fizzbuzz(num1, num2)
	results = (num1..num2).each do |num|
		if num % 3 == 0 && num % 5 == 0
			puts "FizzBuzz"
		elsif num % 3 == 0
			puts "Fizz"
		elsif num % 5 == 0
			puts "Buzz"
		else
			puts num	
		end
	end
	results
end

fizzbuzz(1, 15) 


def fizzbuzz(num1, num2)
	results = []
	num1.upto(num2) do |num|
		results << fizzbuzz_value(num)
	end
	puts results.join(', ')	
end	

def fizzbuzz_value(number)
	case 
	when number % 3 == 0 && number % 5 == 0
		"FizzBuzz"
	when number % 5 == 0
		"Buzz"
	when number % 3 == 0
	  "Fizz"
	else
		 number  		
	end
end	

fizzbuzz(1, 15) 





