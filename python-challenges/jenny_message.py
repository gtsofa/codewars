#Jenny's secret message#Jenny's secret message#Jenny's secret message

"""
Jenny has written a function that returns a greeting for a user. 
However, she's in love with Johnny, and would like to greet him 
slightly different. She added a special case to her function, 
but she made a mistake.
Can you help her?
"""

def greet(name):
    nome = name.title()
    if nome == "Johnny":
        print("Hello, my love" + "!")
    else:
        print("Hello, " + nome + "!" )

greet("julius")

# def greet(name):
#  return "Hello, {name}!".format(name=name) if name!="Johnny" else "Hello, my love!"