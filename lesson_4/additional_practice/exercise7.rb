# exercise7.rb
statement = "The Flintstones Rock"

statement_hash = {}

letters = ("A".."Z").to_a + ("a".."z").to_a
letters.each do |letter|
	letter_frequency = statement.scan(letter).count
	statement_hash[letter] = letter_frequency if letter_frequency > 0
end

puts statement_hash





