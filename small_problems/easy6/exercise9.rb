# exercise9.rb

# takes an array and a search value as arguments
# return true if search value is in the array, false if not
# cannot use include? method


def include?(arr, search)
arr.any? { |num| num == search }
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false



def include?(arr, search)
	counter = 0
	loop do
		break if counter == arr.size
		num = arr[counter]
		return true if num == search 
		counter += 1
	end
	false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false


def include?(array, value)
	array.each { |num| return true if value == num }
  false
end  

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false


