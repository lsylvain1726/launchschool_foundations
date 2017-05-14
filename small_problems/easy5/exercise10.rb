# exercise10.rb

# take short line of text
# print text within box

# plus sign, two dashes, plus sign
# 3 large dashes on each side
# plus sign, two dashes, plus sign


def print_in_box(message)
horizontal_rule = "+#{'-' * (message.size + 2)}+"
empty_line = "|#{' ' * (message.size + 2)}|"

puts horizontal_rule
puts empty_line
puts "| #{message} |"
puts empty_line
puts horizontal_rule
end

p print_in_box('To boldly go where no one has gone before.')
