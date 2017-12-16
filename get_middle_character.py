#Get the Middle Character
"""
Sample Tests:

1
Test.assert_equals(get_middle("test"),"es")
2
Test.assert_equals(get_middle("testing"),"t")
3
Test.assert_equals(get_middle("middle"),"dd")
4
Test.assert_equals(get_middle("A"),"A")
5
Test.assert_equals(get_middle("of"),"of")

"""

def get_middle(s):

    # x = len(s)
    # y = int(x/2)
    
    # if x % 2 == 0:
    #     return s[y-1:y+1]
    # else:
    #     return s[y:y+1]
    
    # #your code here
    index, odd = divmod(len(s), 2)
    return s[index] if odd else s[index - 1:index + 1]
    # return s[(len(s)-1)/2:len(s)/2+1]



get_middle('company')

