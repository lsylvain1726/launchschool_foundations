# exercise7.rb

# method takes a first name, space, and last name
# returns string that contains last name, comma, space, and the first name

def swap_name(str)
string_reversed = str.split
"#{string_reversed[1]}, #{string_reversed[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

def swap_name(name)
  name.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

