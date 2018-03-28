# Are the numbers in order?
'''
In this Kata, your function receives an array of positive integers as input. Your task is to determine whether the numbers are in ascending order.

For the purposes of this Kata, you may assume that all inputs are valid (i.e. arrays containing only positive integers with a length of at least 2).

For example:

in_asc_order([1,2,4,7,19]) # returns True
in_asc_order([1,2,3,4,5]); // returns True
'''

def in_asc_order(mylist):
  a = []
  for i in range(len(mylist)):
    for j in range(i+1, len(mylist)):
      if mylist[i] < mylist[j]:
        # use the a=[] to add True/False depending on the condition such a = [False,True,True,False] values
        a.append(True)
      else:
        a.append(False)
  #bool =  [i, j for (mylist[i], mylist[j]) if mylist[i] <]
  # check to see if there is False/True value in a and return False/True accordingly.
  if False in a:
    return False
  return True
