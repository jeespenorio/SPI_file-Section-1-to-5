import pandas as pd

#initialize data

data1 = {
    'Make':['atv/utv/snow'],
    'Model':['All Model'],
    'Vendor Code':['NACH'],
    'Vendor Name':['NACHMAN INTERNATIONAL CO. LTD'],
    'Type':['SPARK PLUG WIRE'],
    
    'MPN':['1101006'],
    
    'AD LIST ITEM NUMBER':['SM-01166'],
    
    'Vendor Notes':['OEM# 512060094, 512061126WIRE LENGTH:8.5CM, WIRE O.D.:6.7MM.SPARK PLUG X 2PCS. WITH COLD RESISTANT -40℃'] # or you can choose pd.NA
}

#For this column = 'Model':['All Model']
#List All Models
list_models = [
    

'Renegade Backcountry X E-TEC 850',
'Renegade Backcountry X E-TEC 800R',
'Renegade Backcountry X E-TEC 600 HO',
'Renegade Backcountry E-TEC 850',
'Renegade Backcountry E-TEC 800R',
'Renegade Backcountry 800R Power TEK',
'Renegade 800 Backcountry X',
'Renegade 800 Backcountry',
'Backcountry X-RS E-TEC 850 154',
'Backcountry X-RS E-TEC 850 146',
'Backcountry X E-TEC 850',
'Backcountry E-TEC 850',
'Backcountry E-TEC 600R',
'Expedition SE E-TEC 850',
'Expedition SE E-TEC 600R',
'Expedition SE E-TEC 600 HO',
'Expedition SE ACE 900 Turbo R',
'Expedition SE ACE 900 Turbo',
'Expedition SE ACE 900',
'Expedition SE 4-TEC 1200',
'Expedition LE E-TEC 600R',
'Expedition LE E-TEC 600 HO',
'Expedition LE ACE 900 Turbo R',
'Expedition LE ACE 900 Turbo',
'Expedition LE ACE 900',
'Expedition LE 4-TEC 1200',
'Expedition Xtreme E-TEC 850',
'Expedition Xtreme E-TEC 800R',
'Expedition Xtreme ACE 900 Turbo R',
'Freeride S-38 E-TEC 850 154',
'Freeride E-TEC 850 Turbo 165',
'Freeride E-TEC 850 Turbo 154',
'Freeride E-TEC 850 Turbo 146',
'Freeride E-TEC 850 165',
'Freeride E-TEC 850 154',
'Freeride E-TEC 850 146',
'Freeride E-TEC 850 137',
'Grand Touring Limited E-TEC 600R',
'MX Z X-RS Iron Dog E-TEC 600 HO',
'MX Z X-RS E-TEC 850',
'MX Z X-RS E-TEC 800R',
'MX Z X-RS E-TEC 600R',
'MX Z X-RS E-TEC 600 HO',
'MX Z X-RS 800R',
'MX Z X-RS 600',
'MX Z X E-TEC 850',
'MX Z X E-TEC 800R',
'MX Z X E-TEC 600R',
'MX Z X E-TEC 600 HO',
'MX Z X 4-TEC 1200',
'MX Z TNT E-TEC 850',
'MX Z TNT E-TEC 800R',
'MX Z TNT E-TEC 600R',
'Skandic SWT E-TEC 600R',
'Skandic SWT E-TEC 600 HO',
'Skandic SWT ACE 900',
'Skandic SWT ACE 600',
'Skandic SWT',
'Summit X with Expert Package E-TEC 850 Turbo R 175',
'Summit X with Expert Package E-TEC 850 Turbo R 165',
'Summit X with Expert Package E-TEC 850 Turbo R 154',
'Summit X with Expert Package E-TEC 850 Turbo 175',
'Summit X with Expert Package E-TEC 850 Turbo 165',
'Summit X with Expert Package E-TEC 850 Turbo 154',
'Summit X with Expert Package E-TEC 850 175',
'Summit X with Expert Package E-TEC 850 165',
'Summit X with Expert Package E-TEC 850 154 2.5',
'Summit X with Expert Package E-TEC 850 154',
'Summit X w/ Expert Package E-TEC 850 Turbo 154 2.5',
'Summit X T3 Package E-TEC 800R 174',
'Summit X T3 Package E-TEC 800R 163',
'Summit X T3 Package E-TEC 800R 154',
'Summit X E-TEC 850 Turbo R 165',
'Summit X E-TEC 850 Turbo R 154',
'Summit X E-TEC 850 Turbo 165',
'Summit X E-TEC 850 Turbo 154',
'Summit X E-TEC 850 175',
'Summit X E-TEC 850 165',
'Summit X E-TEC 850 154',
'Summit X E-TEC 800R 174',
'Summit X E-TEC 800R 163',
'Summit X E-TEC 800R 154',
'Summit X E-TEC 800R 146',
'Summit X E-TEC 600 HO',
'Tundra Xtreme E-TEC 600 HO'


    
]

#Range of Years in Raw Data given

years = list(range(2009,2021))

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
final_df
