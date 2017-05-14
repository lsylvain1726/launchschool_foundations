# exercise5.rb

# takes a string
# returns string contains orginal value
# returns staggered capitalization scheme
# every other character is capitalized and remaining characters are lowercase
# characters that are not letters should not be changed
# non letters do count as characters when switching between upper and lower case



def staggered_case(str)
	new_string = str.chars.map.with_index do |word, index|
	if index.even?
		word.upcase
		else
		word.downcase
		end	
	end

	new_string.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


def staggered_case(str, starting_case = 'uppercase')
	result = ''
	starting_case == 'uppercase' ? need_upper = true : need_upper = false
	str.chars.each do |char|
		if need_upper
			result += char.upcase
		else
			result += char.downcase
		end
		need_upper = !need_upper		
	end	
	result
end

p staggered_case('I Love Launch School!', 'uppercase') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', 'lowercase') == 'aLl_cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'



