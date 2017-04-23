# question 1

# Before the Block
# a_outer is 42 with an id of 85
# b_outer is "forty two" with an id of 70269716677920
# c_outer is [42] with an id of 70269716677900
# d_outer is 42 with an id of 85

# inside the block

# a_outer has an id of 85
# b_outer has an id of 70269716677920
# c_outer has an id of 70269716677900
# d_outer has an id of 85

# inside the block after reassignment

# a_outer is 22 with an id of 45
# b_outer is "thirty-three" with an id of 70308967139840
# c_outer is [44] with an id of 70308967139820
# d_outer is 44 with an id of 89


# a_inner inside the block

# a_inner is 22 with an id of 45
# b_inner is "thirty-three" with an id of 70308967139840
# c_inner is [44] with an id of 70308967139820
# d_inner is 44 with an id of 89



# a_outer After the Block
# a_inner is 22 with an id of 45
# b_inner is "thirty-three" with an id of 70308967139840
# c_inner is [44] with an id of 70308967139820
# d_inner is 44 with an id of 89

# a_inner after the block

# variables defined inside the block do not
# have any meaning outside of the block

# question 2

# Before the method

# a_outer is 42 with an id of: 85 before the block.
# b_outer is forty two with an id of: 70228365632820 before the block.
# c_outer is [42] with an id of: 70228365632800 before the block.
# d_outer is 42 with an id of: 85 before the block.

# Inside the method

# a_outer id was 85 before the method and is: 85 inside the method.
# b_outer id was 70231721137820 before the method and is: 70231721137820 inside the method.
# c_outer id was 70231721137800 before the method and is: 70231721137800 inside the method.
# d_outer id was 85 before the method and is: 85 inside the method.

# a_outer after reassignment

# a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
# b_outer inside after reassignment is thirty three with an id of: 70204008909340 before and: 70204008908360 after.
# c_outer inside after reassignment is [44] with an id of: 70204008909320 before and: 70204008908340 after.
# d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.

# a_outer after method call

# a_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call.
# b_outer is forty two with an id of: 70342933035120 BEFORE and: 70342933035120 AFTER the method call.
# c_outer is [42] with an id of: 70342933035100 BEFORE and: 70342933035100 AFTER the method call.
# d_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call.


# a_inner inside method

# a_inner is 22 with an id of: 45 inside the method (compared to 45 for outer).
# b_inner is thirty three with an id of: 70241044595860 inside the method (compared to 70241044595860 for outer).
# c_inner is [44] with an id of: 70241044595840 inside the method (compared to 70241044595840 for outer).
# d_inner is 44 with an id of: 89 inside the method (compared to 89 for outer).

# question 3

# string looks like pumpkins
# array => ["pumpkins", "rutabaga"]

# question 4

# my string looks like punmpkinsrutabaga
# my array looks like ["pumpkins"]

# question 5

# ruby automaticall evaluates statements
def color_valid(color)
	if color == "blue" || color == "green"
end	



