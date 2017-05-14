# exercise4.rb

# method takes an integer argument
# returns an array of all integers in sequence between 1 and argument
# always valid integer that is greater than 0

def sequence(num)
	arr = []
	1.upto(num) {|num| arr << num }
	arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]


def sequence(number)	
 number > 0 ? (1..number).to_a : (number..-1).to_a
end

p sequence(-3)
p sequence(5)

def sequence(num)
	arr = []
		if num > 0
		1.upto(num) {|num| arr << num }
		else
			num.upto(-1) {|num| arr << num }
		end
	arr
end 

p sequence(-3)
p sequence(5)


