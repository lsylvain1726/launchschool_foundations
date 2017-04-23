#exercise12.rb

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
x = {}

arr.each do |item|
	x[item[0]] = item[1]
end

