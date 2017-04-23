#exercise10.rb

data = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]



data.map do |hash|
	hashes = {}
	hash.each  do |k, v|
		hashes[k] = v + 1
	end
	hashes
end	