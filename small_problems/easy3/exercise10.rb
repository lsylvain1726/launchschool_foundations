# exercise10.rb

# method takes integer as argument
# returns true if palindromic
# returns false otherwise

def palindromic_number?(num)
    num.to_s == num.to_s.reverse
end	

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

some_int = 5
some_int.to_s.rjust(3, '0')


