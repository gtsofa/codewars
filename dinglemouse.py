#FIXME: Get Full Name

"""
he code provided is supposed return a person's Full Name given their first and last names.

But it's not working properly.

Notes

The first and/or last names are never null (None in Python), but may be empty.

Task

Fix the bug so we can all go home early.

"""

class Dinglemouse(object):

    def __init__(self, first_name, last_name):
        first_name = first_name
        last_name = last_name
    def get_full_name(self):
        if first_name == '':

            return 'last_name'
        if  last_name == '':
            return first_name
        else:
            

        return first_name + ' ' + last_name


