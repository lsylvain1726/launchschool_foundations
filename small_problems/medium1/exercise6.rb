# exercise6.rb

# stack is a list of values that grows and shrinks dynamically
# stack can be easily implemented as an array with #push and #pop methods
# register is the current value but not part of the stack
# operations that require two values, pop the top most item from the stack
# that is removes most recently pushed value from the stack
# perform operation using popped value and the register value
# then store the result back in the register

# consider mult operation
# it multiples stack value with the register value
# removes the value from the stack
# then stores the result back in the register
# say we have stack 3 6 4 (4 is topmost item of stack)
# and a register value of 7
# mult operation will transform to 3 6 stack (4 is removed) 
# result of multiplication , 28, is left in the register
# if we do another mult at this point then stack is transformed to 3
# and register is left with value of 168

stack = []
register = 0

str = "5 PUSH 3 MULT PRINT"
arr = str.split(' ')
register << 5



