#exercise9.rb

# method that takes one argument
# the argument is a positive integer
# returns the sume of the digits

# determine sum of digitis
# iterate through integer and add each digit together


def sum(num)
arr = num.to_s.chars.map { |num| num.to_i }
arr.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45