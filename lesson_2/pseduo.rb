#pseduo example

def find_greatest(numbers)
  saved_number = nil

  numbers.each do |num|
    saved_number ||= num
    if saved_number >= num
      next
    else
      saved_number = num
    end
   end

   saved_number    
end 

#START
#given two integers called num1 and num2
#print num1 plus num2

def sum(num1, num2)
  print num1 + num2
end  

sum(1,2)

#START
#given an array of strings called "arr"
#set arr = []
#print strings concatenated together in arr


#START
#given an arr of integers called arr
#set new_arr = every other element of arr
#return new_arr

