# exercise7.rb

# method takes a string
# returns a new string in which every character is doubled


def repeater(str)
result = []
str.split('').each do |letter|
result << letter * 2
end
result.join("")
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

def repeater(str)
	result = ''
	str.each_char do |char|
		result << char << char
	end
	result	
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''



