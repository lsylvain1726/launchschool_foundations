# exercise1.rb

# method takes an array of numbers
# returns the sum of the sums of each leading subsequence
# array always contains at least one number


def sum_of_sums(arr)
count = 0
count2 = 0
new_arr = arr.map { |num| count += num }
new_arr.each { |num| count2 += num }
count2
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35


def sum_of_sums(arr)
	sum_total = 0
	1.upto(arr.size) do |count|
		sum_total += arr.slice(0, count).reduce(:+)
	end
	sum_total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35








