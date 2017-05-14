# exercise8.rb

# takes two integers as arguments
# the first argument is a count
# second is the first number of a sequence that your method will create
# return an array that contains the same number of elements as the count argument
# values of each element will be multiples of the starting number
# count will always have value of 0 or greater
# starting number can be any integer
# if count is 0 empty list should be returned


def sequence(count, starting_num)
arr = []
(1..count).each do |count|
arr << count * starting_num
end
arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []













