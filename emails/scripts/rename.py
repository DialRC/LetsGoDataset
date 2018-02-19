import os

"""
This script rename each email to a date.txt file
"""
for filename in os.listdir("."):
    idx = filename.find("20")
    if idx > -1:
        os.rename(filename, filename[idx:idx+8]+'.txt')
    else:
        print filename
