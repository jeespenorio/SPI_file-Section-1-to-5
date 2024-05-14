import pandas as pd

#initialize data

data1 = {
    'Make':['atv/utv/snow'],
    'Model':['All Model'],
    'Vendor Code':['NACH'],
    'Vendor Name':['NACHMAN INTERNATIONAL CO. LTD'],
    'Type':['HEADLIGHT SWITCH'],
    
    'MPN':['1101011'],
    
    'AD LIST ITEM NUMBER':['SM-01592'],
    
    'Vendor Notes':['OEM# 51517846312V. 2-WAY, 3 PIN. HIGH-LOW BEAM.']
}

#For this column = 'Model':['All Model']
#List All Models
list_models = [

'Backcountry Sport 600 EFI',
'Expedition Sport 600 EFI',
'Summit Freeride E-TEC 800R',
'Freeride S-38 E-TEC 850 154',
'Freeride E-TEC 850 Turbo 165',
'Freeride E-TEC 850 Turbo 154',
'Freeride E-TEC 850 Turbo 146',
'Freeride E-TEC 850 165',
'Freeride E-TEC 850 154',
'Freeride E-TEC 850 146',
'Freeride E-TEC 850 137',
'Freeride E-TEC 800R 154',
'Freeride E-TEC 800R 146',
'Freeride E-TEC 800R 137',
'MX Z X-RS Iron Dog E-TEC 600 HO',
'MX Z X-RS E-TEC 850',
'MX Z X-RS E-TEC 600R',
'MX Z X-RS E-TEC 600 HO',
'MX Z X-RS 600',
'MX Z X E-TEC 600R',
'MX Z X E-TEC 600 HO',
'MX Z TNT E-TEC 600R',
'MX Z TNT E-TEC 600 HO',
'MX Z TNT 600 Carb',
'MX Z TNT 600 ACE',
'MX Z Sport 600 EFI',
'MX Z Sport 600 Carb',
'MX Z Sport 600 ACE',
'MX Z Neo+ 600 EFI-55',
'MX Z Neo 600 EFI-40',
'MX Z Blizzard E-TEC 600R',
'MX Z Blizzard E-TEC 600 HO',
'MX Z 600RS',
'MX Z 600 X-RS',
'MX Z 600 X',
'MX Z 600 Trail',
'MX Z 600 TNT Early Edition',
'MX Z 600 TNT',
'MX Z 600 Sport',
'MX Z 600 Renegade X',
'MX Z 600 Renegade',
'MX Z 600 R X',
'MX Z 600 R Sport',
'MX Z 600 Blizzard',
'MX Z 600 Adrenaline',
'MX Z 600 50th Anniversary',
'MX Z 600',
'Renegade 600 X',
'Renegade 600 Backcountry',
'Renegade 600 Adrenaline',
'Skandic WT E-TEC 600R',
'Skandic WT E-TEC 600 HO',
'Skandic WT ACE 900',
'Skandic WT 600 EFI',
'Skandic WT 600 ACE',
'Skandic WT 600',
'Skandic WT 550F',
'Skandic WT 550 Fan',
'Skandic V-800 Tundra LT',
'Skandic V-800 Tundra',
'Skandic V-800 SWT',
'Skandic Tundra Xtreme',
'Skandic Tundra LT 600 ACE',
'Skandic SWT E-TEC 600R',
'Skandic SWT E-TEC 600 HO',
'Skandic SWT ACE 900',
'Skandic SWT ACE 600',
'Skandic SWT',
'Skandic Sport 600 EFI',
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
'BoonDocker DS 850 E-TEC',
'Rave RE 850 E-TEC',
'Shredder RE 850 E-TEC Turbo R',
'Shredder RE 850 E-TEC',
'Shredder DS 850 E-TEC Turbo R',
'Shredder DS 850 E-TEC',
'Xterrian RE 850 E-TEC',
'Xterrian Brutal 850 E-TEC'

]

#Range of Years in Raw Data given

years = list(range(2019,2025))

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
