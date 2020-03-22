# PROBLEM:
# Write a method which takes a grocery list (array) of fruits with quantities 
# and converts it into an array of the correct number of each fruit.

# INPUT: Nested array
# RULES: Must return one arr
# OUTPUT: Arr

# QUESTIONS?:
# return new array or original array ?

# PSEUDOCODE:

def buy_fruit(nested_arr)

	nested_arr.map {|fruit, num| [fruit] * num }.flatten\

end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

