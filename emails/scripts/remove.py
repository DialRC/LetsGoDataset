import os

"""
This script removes personal email information
"""
for filename in os.listdir("."):
    with open(filename, 'r') as f:
        for i, e in enumerate(x):
            if '-----' in e:
                start = i - 1
                break
        ret = x[start:end]

    with open(filename, 'w') as f:
        for each in ret:
            f.write(each)
