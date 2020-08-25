import pandas as pd
from pandas import read_excel


#
df = pd.read_excel('report.xls')
df = df[df['Name'] == df['Network']]
print (df.shape[0])


#
df = pd.read_excel('report.xls')
df = df[df['room name'] == df['room key']]
print (df.shape[0])

#
df = pd.read_excel('report.xls')
df = df[df['device type'] == df['Impact']]
print (df.shape['impact'])

#
df = pd.read_excel('report.xls')
df = df[df['device type'] == df['Impact']]
print (df.shape['output'])


#
df = pd.read_excel('report.xls')
df = df[df['missing'] == df['extra']]
print (df.shape['issue'])

#
df = pd.read_excel('report.xls')
df = df[df['extra'] == df['Missing']]
print (df.shape['issue'])

