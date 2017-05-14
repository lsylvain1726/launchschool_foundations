# exercise10.rb

# method takes positive integer
# displays right triangle whose sides have n stars
# diagnol side, should have on end at lower left, and other end at upper right


def triangle(n)
	star = "*"
	space = " "
	counter = 0
	loop do
		counter += 1
		puts (space * (n - counter)) + (star * (n - (n - counter)))
		break if counter == n
	end
end

p triangle(5)
p "-----------------"
p triangle(9)


def triangle(num)
	spaces = num - 1
	stars = 1

	num.times do |n|
		puts (' ' * spaces) + ("*" * stars)
		spaces -= 1
		stars += 1
	end
end		


p triangle(5)
p "-----------------"
p triangle(9)

def triangle(num)
	spaces = 0
	stars = num 

	num.times do |n|
		puts (' ' * spaces) + ("*" * stars)
		spaces += 1
		stars -= 1
	end
end		


p triangle(5)
p "-----------------"
p triangle(9)











