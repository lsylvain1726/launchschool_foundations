#exercise6.rb

# print all odd numbers from 1 to 99
# all numbers should be printed on seperate lines

(1..99).each do |num|
	puts num if num.odd?
end	

count = 0

loop do
	count += 1
	puts count if count % 2 == 1
	break if count > 99 
end	

1.upto(99) {|num| puts num if num.odd? }