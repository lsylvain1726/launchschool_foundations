#exercise2.rb

# method calls an integer or float
# the integer can be positive or negative
# check to see if integer is odd
# return true if the integer is odd

def is_odd?(num)
	num % 2 != 0
end	

puts is_odd?(2)    
puts is_odd?(5)    
puts is_odd?(-17)  
puts is_odd?(-8) 

def is_odd?(num)
 num.odd?	
end	

puts is_odd?(2)    
puts is_odd?(5)    
puts is_odd?(-17)  
puts is_odd?(-8) 