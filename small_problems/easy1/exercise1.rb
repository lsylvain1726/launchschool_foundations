#exercise1.rb

# pass string into the method
# pass an integer into the method
# print the string as many times as integer indicates

def repeat(str, num)
	 count = 0
		loop do
			count += 1
			puts str
			break if count == num
		end	
end	

repeat('Hello', 3)

def repeat(str, num)
	num.times do
	puts str
	end
end


repeat('Hello', 3)