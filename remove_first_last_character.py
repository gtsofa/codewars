#Your goal is to create a function that removes the first and last characters of a string. You're given one parameter, the original string. You don't have to worry with strings with less than two characters.
def remove_first_last_character(name):
  """A function to remove first and last character in a string."""
  if len(name) <= 2:
    #return ''
    print('empty')
  else:
    print(name[1:-1])
  
remove_first_last_character('ok')
