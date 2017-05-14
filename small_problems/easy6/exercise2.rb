# exercise2.rb

# array of strings
# returns an array of the same string values
# except with the vowels removed


def remove_vowels(arr)
	arr.map do |word|
		word.delete('aeiouAEIOU')
	end	
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']