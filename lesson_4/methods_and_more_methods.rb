# exercise 1

# the select method performs selection
# based on the truthiness of the blocks return value
# 'hi' is the return value which is a truthy case
# so a new array containing the original array is returned
# if it said puts "hi" it would return an empty array as puts returns nil which is false
# if the last return was the expression num > 2, it would return a new array containing [3]

# exercise 2

# count returns the blocks value based on its truthiness
# I found out by reading the documnentation which states
# if block is given, counts the number of elements for which the block
# returns a true value
# return value would be 2

# exercise 3

# reject returns a new array based of if the item in the given block is not true
# since puts is used the return value is falsey so the array is returned
# => [1, 2, 3]

# exercise 4
# we pass in an object as an argument
# this object is then passed into the block and is returned at end of iteration
# it returns initially given object

# exercise 5

# shift removes key value pair from hash
# returns it as two item array
# => [':a', "ant"]

# exercise 6

# pop removes last element from array and returns it
# size tells us the length the item removed
# returns 11

# exercise 7

# returns true or false based on if the value is odd or not
# this code outputs 1, stops iterating after this as there is no need to evaluate remaining items
# any? returns true because at least one of the numbers is not false or nil

# exercise 8

# take returns the n elements from enumerable
# so it returns the first two items in arr
# => [1, 2]
# it is not a destructive method
# test arr after running take to determine if its destructive
# arr returns the orignial array

# exercise 9

# will return new array, map always retruns an aray
# when none of conditions in if statement are evaluated then
# if statement returns nil
# the first element an in the condition evualtes to false so a value is not returned 
# nil is returned instead
# returns [nil, 'bear']


# exercise 10

# returns [1, nil, nil]
# the first element in the if condition
# evaluates to false which means num is the blocks return value
# the rest of the elements in the array  evaulate to true for num > 1 which means puts name is last statement 
# evaluated and means the blocks return value is nil for those iterations








