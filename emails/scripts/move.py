import os

"""
This script moves all the emails into directory by year.
"""
for filename in os.listdir("."):
    if os.path.isdir(filename):
        continue
    for year in ['2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016']:
        if not os.path.exists(year):
            os.makedirs(year)
        if year in filename:
            os.rename(filename, "./"+year+"/"+filename)
