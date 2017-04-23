# Loop on command

loop do
	puts "Should I stop laughing"
	answer = gets.chomp
	break if answer == 'yes'
end