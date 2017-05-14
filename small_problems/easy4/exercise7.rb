#exercise7.rb

# argument is a string of digits
# returns string of digits as a number
# cannot use to_i method or Integer constructor
# do not worry about invalid characters

require 'pry'

HASH = { "0" => 0,
"1" => 1,
"2" => 2,
"3" => 3,
"4" => 4,
"5" => 5,
"6" => 6,
"7" => 7,
"8" => 8,
"9" => 9,
"10" => 10
}


def string_to_integer(string)
arr = string.chars.map { |index| HASH[index] }
arr.inject{|a,i| a*10 + i}
end

string_to_integer('4321') == 4321
string_to_integer('570') == 570
