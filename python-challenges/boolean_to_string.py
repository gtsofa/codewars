#Convert a Boolean to a String

"""
Sample tests:
Test.assert_equals(boolean_to_string(True), "True", 'When we pass in true, we want the string "true" as output')
Test.assert_equals(boolean_to_string(False), "False", 'When we pass in false, we want the string "false" as output')
"""

"""
#1
def boolean_to_string(b):
    return str(b)
#2
def boolean_to_string(b):
    return 'True' if b else 'False'
"""

def boolean_to_string(b):

    #your code here
    if b == True:

        return str(b)
    else:
        return str(b)


