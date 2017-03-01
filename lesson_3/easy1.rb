# easy1.rb

# question1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# this array returns a new array => [1, 2, 3]
# prints the original array because it did not
# modify orginial numbers object
# the to_s method is called on puts which is why 
# it is listed in vertical format
# 1
# 2
# 2
# 3

# question 2

# The "!" aka as the bang operator in Ruby
# usually indicates that the method will modify 
# the object it is called on. However, this is not always
# the case. If the "!" and "?" are part of the method name 
# it is not actual ruby syntax. There are uses where the 
# "!" and "?" are actual ruby syntax

# 1. != is a condition and means not equal to
# 2. turns object opposite their boolean equivalent
# 3. This means that the method will modify the object it is called on
# 4. ternary operator, used in expression variable ? true : false
# 5. ternary operator, used in expression variable ? true : false
# 6. turns object into boolean equivalent

# question 3

advice = "Few things in life are as important as house training your pet dionosaur"
advice.gsub!('important', 'urgent')

#question 4

a = [ 1, 2, 3, 4]
# modifies original array and returns the element at index 1
a.delete_at(1)

b = [1, 2, 3, 4]
# delete any element that is 1 from array, returns 1 and modifies original array
b.delete(1)

# Question 5
(10..100).include?(42)

# Question 6

famous_words = "seven years ago..."
famous_words.prepend("Four score and ")

famous_words = "seven years ago..."
first_words = "Four score and "
words_together = first_words + famous_words

famous_words = "seven years ago..."
"Four score and " + famous_words

# Question 7

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

eval(how_deep)

# this returns 42

# Question 8

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!

# Question 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.to_a[2]

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")














