#exercise7.rb

#print even numbers from 1 to 99
# all numbers should be printed on sepeate line

(1..99).each { |num| puts num if num.even?}

count = 0

loop do
	count += 1
	puts count if count % 2 == 0
	break if count == 99
end