# exercise7.rb

# method takes an array of integers
# multiplies all the numbers together
# divides the result by the number of entries in the array
# prints result rounded to 3 decimal points


def show_multiplicative_average(arr)
count = 1

arr.each { |num| count *= num }
final_result = count.to_f / arr.size
puts "The result is #{'%.03f' % final_result}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])


# you will get 3 0 after the decimal point 