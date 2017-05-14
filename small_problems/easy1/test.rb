str = "Hello my world"
index = 0
new_array = []

loop do
	index += 1
arr = str.split
new_word = arr[index]
new_word.reverse! if new_word.size >=5
new_array << new_word

break if arr.size == 0
end

new_array.join(' ')


