import pandas as pd

yearsList = list(range(2007, 2014))

DATADIR = '/content/drive/MyDrive/Surgical Mortality Rate'

charDF = pd.read_csv('2006\Base_Char_Proc.csv', index_col = 0)

for yr in yearsList:
  yrDF = pd.read_csv(f'{yr}\Base_Char_Proc.csv', index_col = 0)
  charDF = pd.concat([charDF, yrDF])

charDF = charDF.drop(columns = ['PAT_STATUS_CLASS'])

charDF.to_csv('Char_RM.csv')