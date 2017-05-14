# exercise10.rb

# method takes a string
# returns the middle character or characters of argument
# if odd length should return exactly one character
# if even length should return two characters


def center_of(str)
characters = str.chars
average = characters.size / 2
if characters.size.even?
characters[average - 1] + characters[average]
else
characters[average]
end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'



