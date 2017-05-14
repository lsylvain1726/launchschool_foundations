# exercise1.rb

# method takes two arguments, an array and a hash
# array will contain 2 or more elements when combined with adjoining spaces will produce persons name
# hash will contain new keys, :title and :occupation and appropriate values
# method should return greeting that uses the persons full name and mentions persons title

def greetings(arr, hash)
"Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around"
end	

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

def greetings(arr, hash)
name = arr.join(' ')
title = hash[:title]
occupation = hash[:occupation]
"Hello, #{name}! Nice to have a #{name} #{title} around"
end	

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })


def greetings(arr, hash)
"Hello, #{arr.join(' ')}! Nice to have a #{hash.values.join(' ')} around"
end	

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })



