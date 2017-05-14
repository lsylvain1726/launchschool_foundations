# exercise9.rb

# takes 3 numbers as argument
# method that determines the mean average of 3 scores
# returns letter value associated with that grade

# tested values are all between 0 and 100
# there is no need to check for negative values or values greater than 100



def get_grade(grade1, grade2, grade3)

score = (grade1 + grade2 + grade3) / 3

case score
when 101..110 then "A+"	
when 90..100  then "A"
when 80..89   then "B"
when 70..79   then "C"
when 60..69   then "D"
else			   "F"
end	
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(101, 101, 101) == "A+"




