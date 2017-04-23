words = "the flintstones rock"
word_arr = words.split


word_arr.map do |word|
  word.capitalize
end

puts word_arr.join(' ')