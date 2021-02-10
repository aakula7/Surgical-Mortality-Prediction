import pandas as pd

yearsList = list(range(2007, 2014))

DATADIR = '/content/drive/MyDrive/Surgical Mortality Rate'

elixDF = pd.read_csv('2006\Base_Elix_Proc.csv', index_col = 0)

for yr in yearsList:
  yrDF = pd.read_csv(f'{yr}\Base_Elix_Proc.csv', index_col = 0)
  elixDF = pd.concat([elixDF, yrDF])

elixDF = elixDF.drop(columns = ['PAT_STATUS_CLASS'])

elixDF.to_csv('Elix_RM.csv')