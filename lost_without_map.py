# Beginner - Lost Without a Map

"""
Given and array of integers (x), return the array with each value doubled.

For example:

[1, 2, 3] --> [2, 4, 6]

For the beginner, try to use the map method - it comes in very handy quite a lot so is a good one to know.
"""

# map(function_to_apply, list_of_inputs)

def maps(a):
  doubled = list(map(lambda a: a**2, a))
  return doubled
  
items = [1, 2, 3]
maps(items)