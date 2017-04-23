
def repeat(str num)
  num.times { |string| puts string }
end  

repeat("Lauren", 3)

def repeat(str, num)
counter = 0
loop do
 counter += 1
 puts str
 break if counter.size == num
end
end

repeat("Lauren")