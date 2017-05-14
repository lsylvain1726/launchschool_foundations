# exercise10.rb

# string is passed in
# returns the next to last word
# word are any sequence of non-blank characters


def penultimate(str)
new_str = str.split
new_str[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

def middle_word(str)
new_str = str.split
average = new_str.size / 2
if new_str[average] == nil
"Sorry, there was no string"
end
new_str[average]
end

p middle_word('last word woop') == 'word'
p middle_word('Launch School is great!') == 'is'
p middle_word('') == nil
p middle_word('Yes') == 'Yes'	


