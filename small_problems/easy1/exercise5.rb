#exercise5.rb

# write a method that takes one argument which is a string
# the method returns that string with the words in reverse order


# Write 'Hello Katies World'
# Start a new string and put "world" as the first word
# why, beacuse it is the last word and we want to start there
# Put Katies down as the second word
# because it is the second from last word, before world


# Write "hello Katies World"
# create an array of strings by splitting the string
# loop through array and remove the last word from the array
# push the word that was removed to a new array
# exit the loop if there are no more words in the array
# return the new array and convert it to a string

def reverse_sentence(str)
	arr = str.split(' ')
	new_arr = []

	loop do
		new_arr << arr.pop
		break if arr.size == 0
	end

	new_arr.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_sentence(str)
	str.split.reverse.join(' ')
end	

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
