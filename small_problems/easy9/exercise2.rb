# exercise2.rb

# method takes a number
# returns 2 times the number provided
# unless the argument is a double number
# double numbers should be returned as is

# double number is a number with even number of digits
# left side digits exactly the same as its right side digits


def double_number?(num)
arr = num.to_s.split('')
	if arr.size.even?
		avg = arr.size / 2
		arr[0, avg] == arr[avg, avg]
	else
		false
end
end

def twice(num)
	double_number?(num) == true ? num : num * 2
end

p twice(37) == 74
p twice(8778) == 17556
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10





