# exercise6.rb

# argument is an array
# returns array with same number of elements
# each element is running total of numbers before it
# running total are the numbers in the original array

# [2, 5, 13] == [2, 7, 20]

def running_total(arr)
total = 0

arr.map do |num|
 total += num
end	
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

def running_total(arr)
total = 0
arr.each_with_object([]) { |num, array| array << total += num }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []






