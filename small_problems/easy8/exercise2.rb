# exercise2.rb

# create a story template with blanks for words
# you or another player than construct a list of words and place them in story
# prompts for a noun
# prompts for a verb
# prompts for an adverb
# prompts for an adjective
# put them into the story

puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp 

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}. That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample






