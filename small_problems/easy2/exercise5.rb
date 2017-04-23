#exercise5.rb

# ask for users name
# greet the user
# if the user puts an exclamation point after there name, then the computer yells back


puts "What is your name"
name = gets.chomp!

if name[-1] == '!'
	name = name.chop!
	puts "HELLO, #{name.upcase}. WHY ARE WE SCREAMING?"
else
	puts "Hello, #{name}."
end	