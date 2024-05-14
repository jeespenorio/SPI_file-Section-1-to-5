import pandas as pd

#initialize data

data1 = {
    'Make':['atv/utv/snow'],
    'Model':['All Model'],
    'Vendor Code':['NACH'],
    'Vendor Name':['NACHMAN INTERNATIONAL CO. LTD'],
    'Type':['CIRCUIT BREAKER'],
    
    'MPN':['1101003'],
    
    'AD LIST ITEM NUMBER':['AT-01848'],
    
    'Vendor Notes':['OEM# 401137214VDC. 20 AMP.'] # or you can choose pd.NA
}

#For this column = 'Model':['All Model']
#List All Models
list_models = [
    
'650 Voyageur 146',
'650 SwitchBack XC 146',
'650 SwitchBack SP 146',
'650 SwitchBack Assault 146',
'650 SKS 146',
'650 SKS',
'650 RXL Touring',
'650 RXL SKS',
'650 RXL LT',
'650 RXL',
'650 RMK KHAOS Slash 146',
'650 RMK KHAOS Matryx Slash 146',
'650 PRO-RMK Matryx 155',
'650 PRO-RMK 155',
'650 INDY XCR 136',
'650 INDY XCR 128',
'650 INDY XC Launch Edition 137',
'650 INDY XC Launch Edition 129',
'650 INDY XC 137',
'650 INDY XC 129',
'650 INDY VR1 137',
'650 INDY VR1 129',
'650 INDY SP 137',
'650 INDY Adventure X2 137',
'650 INDY Adventure 137',
'650',
'850 SwitchBack XC 146',
'850 SwitchBack Assault 146',
'850 RMK KHAOS Slash 165',
'850 RMK KHAOS Slash 163',
'850 RMK KHAOS Slash 155',
'850 RMK KHAOS Slash 146',
'850 RMK KHAOS 155',
'850 PRO-RMK Slash 165',
'850 PRO-RMK Slash 163',
'850 PRO-RMK Slash 155',
'850 PRO-RMK 155',
'850 INDY XCR 136',
'850 INDY XCR 128',
'850 INDY XC 137',
'850 INDY XC 129',
'850 INDY VR1 137',
'850 INDY VR1 129',
'850 INDY Adventure 137',
'Patriot Boost SwitchBack Assault 146',
'Patriot Boost RMK KHAOS Slash 165',
'Patriot Boost RMK KHAOS Slash 163',
'Patriot Boost RMK KHAOS Slash 155',
'Patriot Boost PRO-RMK Slash 165',
'Patriot Boost PRO-RMK Slash 163',
'Patriot Boost PRO-RMK Slash 155',
'Patriot Boost INDY VR1 137',
'Patriot Boost INDY VR1 129'


    
]

#Range of Years in Raw Data given

years = list(range(2003,2020))

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
