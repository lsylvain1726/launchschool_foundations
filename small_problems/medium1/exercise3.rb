# exercise3.rb

# method takes an integer as an argument
# returns the maximum rotation

# example of maximum rotation
# number is 735291
# first rotate it to the left: 352917
# now keep first digit fixed and rotate remaining digits: 329175
# now keep first 2 digits fixed and rotate: 321759
# now keep first 3 digits fixed and rotate: 321597
# finally keep the first 4 digits fixed and rotate final 2 digits: 321579

#735291 => 352917 - no digits fixed
#3 52917 => 3 29175 - 1 digit fixed
#32 9175 => 32 1759 - 2 digits fixed
#321 759 => 321 597 - 3 digits fixed
#3215 97 => 3215 79 - 4 digit fixed
#321579 => maximum rotation of original number


def rotate_array(array)
array[1..-1] + [array[0]]
end
# rotate_array([7, 3, 5, 2, 9, 1]) 
# => [3, 5, 2, 9, 1, 7]

def rotate_rightmost_digits(number, n)
all_digits = number.to_s.chars
all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
all_digits.join.to_i
end

#rotate_rightmost_digits(735291, 5)
# => 73 2915 - last 4 digits rotated


def max_rotation(original_num)
count = original_num.to_s.size
count.downto(2) do |num|
original_num = rotate_rightmost_digits(original_num, num)
end
original_num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845









