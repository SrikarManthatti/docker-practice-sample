import pandas as pd
import os

print("current working directory")
print(os.getcwd())

print("contents of folder")
print(os.listdir(os.getcwd()))

df = pd.read_csv('./data/ratings.csv')

print(df.groupby(['userId'])['userId'].count())