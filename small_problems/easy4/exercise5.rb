# exercise5.rb

# method takes one argument a number
# searches for all multiples of 3 and 5 between 1 and number
# computes the sum of those multiples

# determine if multiple of 3: num % 3 == 0
# determine if multiple of 5: num # 5 == 0

def multisum(num)
	arr = []

	(1..num).each do |num|
		if num % 3 == 0 || num % 5 == 0
			arr << num
		end	
	end

	arr.reduce(:+)

end



puts multisum(3) 
puts multisum(5) 
puts multisum(10) 
puts multisum(1000) 



def multisum(num)
	arr = []
	sum = 0

	(1..num).each do |num|
		if num % 3 == 0 || num % 5 == 0
		 arr << num
		end	
	end

	arr.each do |num|
		sum += num
	end
	sum
end



puts multisum(3) 
puts multisum(5) 
puts multisum(10) 
puts multisum(1000) 


