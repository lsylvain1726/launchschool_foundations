# exercise8.rb

# method takes one argument
# the argument is an array
# returns average of all numbers in the array
# array will never be empty and will always be positive integers

# calculate the average
# sum of all integers divided by number of integers

def average(arr)

base = 0

arr.map! { |num| base += num }
avg = arr.last.to_f / arr.size.to_f
avg

end

puts average([1, 5, 87, 45, 8, 8]) 
puts average([9, 47, 23, 95, 16, 52])

def average(arr)

sum = arr.reduce(:+)
sum / arr.count

end

puts average([1, 5, 87, 45, 8, 8]) 
puts average([9, 47, 23, 95, 16, 52])  

