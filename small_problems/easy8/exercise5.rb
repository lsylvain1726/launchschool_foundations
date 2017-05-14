# exercise5.rb

# method takes a string
# returns a list of all substrings that are palindromic
# each substring must consist of same sequence of character forwards as it does backwards
# return value should be arranged in same sequence as sub strings appear in string
# duplicate palindromes should be included

# single characters not palindromes
# pay attention to case and consider all characters

def substrings_at_start(string)
new_arr = []
0.upto(string.size - 1) do |index|
new_arr << string[0..index]
end
new_arr	
end

def substrings(str)
results = []
(0..str.size).each do |start_index|
this_substring = str[start_index..-1]
results.concat(substrings_at_start(this_substring))
end
results
end

def palindromic?(str)
str = str.downcase.gsub(/[^a-z0-9]/, '')
str == str.reverse && str.size > 1
end	

def palindromes(str)
each_substring = substrings(str)
each_substring.select do |str|
palindromic?(str)
end 
end

p palindromes('abcd')
p palindromes('madam') 
p palindromes('knitting cassettes') 
p palindromes('hello-madam-did-madam-goodbye')


