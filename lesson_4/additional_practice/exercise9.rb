# exercise9.rb

def titleize(sentence)
	sentence.split.map {|word| word.capitalize}.join(' ')
end	

puts titleize("the flintstones rock")






