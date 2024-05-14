import pandas as pd

#initialize data

data1 = {
    'Make':['atv/utv/snow'],
    'Model':['All Model'],
    'Vendor Code':['NACH'],
    'Vendor Name':['NACHMAN INTERNATIONAL CO. LTD'],
    'Type':['HARDWARMER SWITCH'],
    
    'MPN':['1101010'],
    
    'AD LIST ITEM NUMBER':['SM-01591'],
    
    'Vendor Notes':['OEM# 4011319125/250VAC. 3-WAY, 3 PIN.']
}

#For this column = 'Model':['All Model']
#List All Models
list_models = [
    

'600 SwitchBack Assault 144',
'600 RMK 155',
'600 RMK 144',
'600 RMK',
'650 INDY Adventure X2 137',
'650 INDY Adventure 137',
'800 RMK SP 151',
'800 RMK SP 144',
'800 RMK KHAOS 155 3in.',
'800 RMK KHAOS 155',
'800 RMK Assault 155 LE',
'800 RMK Assault 155 3in.',
'800 RMK Assault 155',
'800 RMK 155',
'800 RMK 144',
'800 RMK',
'800 SwitchBack Assault LE',
'800 SwitchBack Assault 144 TD Series LE',
'800 SwitchBack Assault 144',
'800 Titan Adventure 155',
'850 RMK KHAOS Slash 165',
'850 RMK KHAOS Slash 163',
'850 RMK KHAOS Slash 155',
'850 RMK KHAOS Slash 146',
'850 RMK KHAOS QD2 165 2.75in.',
'850 RMK KHAOS QD2 163 3in.',
'850 RMK KHAOS QD2 155 3in.',
'850 RMK KHAOS QD2 155 2.75in.',
'850 RMK KHAOS Matryx Slash 165 2.75in.',
'850 RMK KHAOS Matryx Slash 163 3in.',
'850 RMK KHAOS Matryx Slash 155',
'850 RMK KHAOS Matryx Slash 146',
'850 RMK KHAOS Matryx 155',
'850 RMK KHAOS AXYS 165 2.75in.',
'850 RMK KHAOS AXYS 163 3in.',
'850 RMK KHAOS AXYS 155 3in.',
'850 RMK KHAOS AXYS 155 2.75in.',
'850 RMK KHAOS 163 2.6in.',
'850 RMK KHAOS 155 3in.',
'850 RMK KHAOS 155',
'Patriot Boost SwitchBack Assault 146',
'Patriot Boost RMK KHAOS Slash 165',
'Patriot Boost RMK KHAOS Slash 163',
'Patriot Boost RMK KHAOS Slash 155',
'Patriot Boost RMK KHAOS Matryx Slash 155',
'Patriot Boost PRO-RMK Slash 165',
'Patriot Boost PRO-RMK Slash 163',
'Patriot Boost PRO-RMK Slash 155',
'Patriot Boost PRO-RMK Matryx Slash 165 2.75in.',
'Patriot Boost PRO-RMK Matryx Slash 163 3in.',
'Patriot Boost INDY VR1 137',
'Patriot Boost INDY VR1 129',
'Patriot 9R RMK KHAOS Slash 165',
'Patriot 9R RMK KHAOS Slash 163',
'Patriot 9R RMK KHAOS Slash 155',
'Patriot 9R RMK KHAOS Slash 146',
'Patriot 9R PRO-RMK Slash 165',
'Patriot 9R PRO-RMK Slash 163',
'Patriot 9R PRO-RMK Slash 155',
'ProStar S4 Voyageur 146',
'ProStar S4 Titan Adventure 155',
'ProStar S4 INDY XC 137',
'ProStar S4 INDY XC 129',
'ProStar S4 INDY Adventure X2 137',
'ProStar S4 INDY Adventure 137',
'800 Assault RMK 146'

]

#Range of Years in Raw Data given

years = list(range(2008,2025))

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
