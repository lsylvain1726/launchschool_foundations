# medium1.rb

# question 1
10.times { |num| puts (" " * num) + "The Flintstones Rock!"}

# question 2

#you need to convert the fixed numbers into a string
#because it is being used in a string
puts "the value of 40 + 2 is " + (40 + 2)

#string interpolation
puts "the value of 40 + 2 is #{40 + 2}"

#using the to_s method
puts "the value of 40 + 2 is " + (40 + 2).to_s

# question 
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

# bonus1: allows you to determine if the result
# of the division is an integer number (no remainder)

# bonus2: this is the return value from the method. Withou
# an explicit return the last statement executed is returned
# if we left this line out the code would run but the 
# return value would be nil

# Question 4




# Question 5

# Limit is not visible within the scope of fib
# A method cannot access variables outside of its scope


def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

# question 6

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# question 7

# the following code outputs 34

# question 8

# the program does not reassign the demo_hash so the 
# actual hash object that gets changed is the
# munsters hash

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  new_hash = {}
  demo_hash.values.each do |family_member|
    new_hash["age"] = family_member["age"] + 42
    new_hash["gender"] = "other"
  end
  new_hash
end

new_munsters = mess_with_demographics(munsters)

puts new_munsters
puts munsters
puts new_munsters.object_id
puts munsters.object_id

# question 9

# "paper" is the result of the following call

# question 10

# the output will be "no"
# The foo method will always be "yes"
# "yes" does not equal no so it is false
# the  right of the ternary operator is false
# so "no" is returned
# (param = "no") is a default parameter
# in case no argument was passed into the method


