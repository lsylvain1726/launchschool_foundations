# exercise5.rb

# method takes string argument
# returns true if all alphabetic characters inside string are uppercase
# false otherwise
# characters not alphabetic should be ignored

def uppercase?(str)
end	



CAPITAL = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
def uppercase?(str)
	arr = str.gsub(/[\s\d\W]/,'').chars
	arr.all? { |letter| CAPITAL.include?(letter) }
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

def uppercase?(str)
	str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true





