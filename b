import pandas as pd

#initialize data

data1 = {
    'Make':['ARCTIC CAT'],
    'Model':['All Model'],
    'Vendor Code':['NACH'],
    'Vendor Name':['NACHMAN INTERNATIONAL CO. LTD'],
    
    'MPN':['999544'],
    
    'AD LIST ITEM NUMBER':['1121013'],
    
    'Vendor Notes':[' '] # or you can choose pd.NA
}

#For this column = 'Model':['All Model']
#List All Models
list_models = [
    
'Freeride E-TEC 850 137',
'Freeride E-TEC 850 146',
'Freeride S-38 E-TEC 850 154',
'Freeride E-TEC 850 154',
'Freeride E-TEC 850 Turbo 154',
'Freeride E-TEC 850 Turbo 165',
'Freeride E-TEC 850 Turbo 146'
    
]

#Range of Years in Raw Data given

years = list(range(2007,2025))

#Functions/Syntax to Generate the Dataframe/ Tables

def generate_df(model, data, year):
    data_copy = data.copy()
    data_copy['Model'] = model
    data_copy['Year'] = year
    return pd.DataFrame(data_copy)

dfs=[]
for year in years:
    df1 = pd.concat([generate_df(model,data1, year) for model in list_models], ignore_index = True)
    dfs.append(df1)

#Concatenate all DataFrames or Tables created
final_df = pd.concat(dfs, ignore_index = True)
                     
#Display or Print 
final_df.head(20)
