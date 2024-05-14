import pandas as pd

#initialize data

data1 = {
    'Make':['atv/utv/snow'],
    'Model':['All Model'],
    'Vendor Code':['NACH'],
    'Vendor Name':['NACHMAN INTERNATIONAL CO. LTD'],
    'Type':['SWITCH GUARD'],
    
    'MPN':['1101014'],
    
    'AD LIST ITEM NUMBER':['SM-01595'],
    
    'Vendor Notes':['OEM# 8639-097INCLUDES: GUARD X 1, SUPER GLUE X 1']
}

#For this column = 'Model':['All Model']
#List All Models
list_models = [

'Bearcat 7000 XT GS',
'Bearcat 7000 XT',
'M 6000 Sno Pro ES 153',
'M 6000 Sno Pro 153',
'M 6000 Sno Pro 141',
'M 6000 SE ES 153',
'M 6000 SE ES 141',
'M 6000 SE 153',
'M 6000 SE 141',
'M 6000 Limited 153',
'M 6000 ES 153',
'M 6000 153',
'M 6000 141',
'M 8000 Sno Pro ES 162',
'M 8000 Sno Pro ES 153',
'M 8000 Sno Pro ES 141',
'M 8000 Sno Pro 162 Early Build',
'M 8000 Sno Pro 162',
'M 8000 Sno Pro 153 Early Build',
'M 8000 Sno Pro 153',
'M 8000 Sno Pro 141',
'M 8000 SE ES 162',
'M 8000 SE ES 153',
'M 8000 SE 153',
'M 8000 SE 141',
'M 8000 Rob Kincaid SE',
'M 8000 Mountain Cat ES 162',
'M 8000 Mountain Cat ES 153',
'M 8000 Mountain Cat Alpha One ES 165',
'M 8000 Mountain Cat Alpha One ES 154 2.6in.',
'M 8000 Mountain Cat Alpha One ES 154',
'M 8000 Mountain Cat Alpha One ES 146',
'M 8000 Mountain Cat Alpha One ATAC ES 165',
'M 8000 Mountain Cat Alpha One ATAC ES 154 2.6in.',
'M 8000 Mountain Cat Alpha One ATAC ES 154',
'M 8000 Mountain Cat Alpha One ATAC ES 146',
'M 8000 Mountain Cat Alpha One ATAC 165',
'M 8000 Mountain Cat Alpha One ATAC 154 2.6in.',
'M 8000 Mountain Cat Alpha One ATAC 154',
'M 8000 Mountain Cat Alpha One ATAC 146',
'M 8000 Mountain Cat Alpha One 165',
'M 8000 Mountain Cat Alpha One 154 2.6in.',
'M 8000 Mountain Cat Alpha One 154',
'M 8000 Mountain Cat Alpha One 146',
'M 8000 Mountain Cat 162',
'M 8000 Mountain Cat 153',
'M 8000 Limited ES 162',
'M 8000 Limited ES 153',
'M 8000 Limited 162',
'M 8000 Limited 153',
'M 8000 HCR 153',
'M 8000 Hardcore Alpha One ES 165',
'M 8000 Hardcore Alpha One ES 154 2.6in.',
'M 8000 Hardcore Alpha One ES 154',
'M 8000 Hardcore Alpha One ES 146',
'M 8000 Hardcore Alpha One 165',
'M 8000 Hardcore Alpha One 154 2.6in.',
'M 8000 Hardcore Alpha One 154',
'M 8000 Hardcore Alpha One 146',
'M 8000 Hardcore 162',
'M 8000 Hardcore 153',
'M 8000 David McClure SE',
'M 8000 Alpha One 165',
'M 8000 Alpha One 154',
'M 8000 153',
'M 9000 Sno Pro 162',
'M 9000 Limited 162',
'M 9000 King Cat 162',
'M 9000 HCR 162',
'M 9000 153',
'Norseman X 8000',
'Norseman X 6000',
'Norseman 6000 ES',
'Norseman 3000 ES',
'Norseman 3000',
'Pantera 3000',
'Pantera 6000 ES',
'Pantera 7000 XT Limited',
'Pantera 7000 Limited',
'Pantera 7000',
'Riot 6000 1.35in.',
'Riot 6000',
'Riot 8000 ATAC 1.6in.',
'Riot 8000 ATAC',
'Riot 8000 1.6in.',
'Riot 8000 1.35in.',
'Riot 8000',
'Riot 9000 ATAC',
'XF 6000 Sno Pro',
'XF 6000 LXR',
'XF 6000 Limited',
'XF 6000 High Country Limited ES',
'XF 6000 High Country ES',
'XF 6000 High Country',
'XF 6000 Crosstrek ES',
'XF 6000 Crosstrek',
'XF 6000 Crosstour ES',
'XF 6000 Crosstour',
'XF 6000 Cross Country Limited ES',
'XF 6000 Cross Country',
'XF 8000 Sno Pro',
'XF 8000 LXR',
'XF 8000 Limited',
'XF 8000 High Country Sno Pro',
'XF 8000 High Country Limited ES 153',
'XF 8000 High Country Limited ES 141',
'XF 8000 High Country Limited',
'XF 8000 High Country',
'XF 8000 Crosstrek ES',
'XF 8000 Crosstrek',
'XF 8000 Crosstour',
'XF 8000 Cross Country Sno Pro',
'XF 8000 Cross Country Limited ES',
'XF 8000 Cross Country Limited',
'XF 8000 Cross Country',
'ProCross XF 800 Sno Pro Limited',
'ProCross XF 800 Sno Pro',
'ProCross XF 800 LXR',
'ProCross XF 800 Crosstour',
'ProClimb XF 800 Sno Pro High Country Ltd',
'ProClimb XF 800 Sno Pro High Country',
'XF 9000 Sno Pro',
'XF 9000 LXR',
'XF 9000 Limited',
'XF 9000 High Country Sno Pro',
'XF 9000 High Country Limited 153',
'XF 9000 High Country Limited 141',
'XF 9000 High Country Limited',
'XF 9000 High Country',
'XF 9000 Crosstrek',
'XF 9000 Crosstour',
'XF 9000 Cross Country Sno Pro',
'XF 9000 Cross Country Limited',
'XF 9000 Cross Country',
'ZR 3000 LXR',
'ZR 3000',
'ZR 7000 Sno Pro 137',
'ZR 7000 Sno Pro 129',
'ZR 7000 RR',
'ZR 7000 LXR 137',
'ZR 7000 LXR 129',
'ZR 7000 Limited 137 iACT',
'ZR 7000 Limited 137',
'ZR 7000 Limited 129',
'ZR 7000 El Tigre',
'ZR 7000 137',
'ZR 7000 129',
'ZR 8000 Sno Pro ES 137 Early Build',
'ZR 8000 Sno Pro ES 137',
'ZR 8000 Sno Pro ES 129 Early Build',
'ZR 8000 Sno Pro ES 129',
'ZR 8000 Sno Pro 137',
'ZR 8000 Sno Pro 129',
'ZR 8000 RR ES 137',
'ZR 8000 RR ES 129',
'ZR 8000 RR',
'ZR 8000 LXR ES 137',
'ZR 8000 LXR ES 129',
'ZR 8000 LXR 137',
'ZR 8000 LXR 129',
'ZR 8000 Limited ES ATAC 137',
'ZR 8000 Limited ES 137 iACT',
'ZR 8000 Limited ES 137',
'ZR 8000 Limited ES 129 iACT',
'ZR 8000 Limited ES 129',
'ZR 8000 Limited 137',
'ZR 8000 Limited 129',
'ZR 8000 ES 137',
'ZR 8000 ES 129',
'ZR 8000 El Tigre ES 137',
'ZR 8000 El Tigre ES 129',
'ZR 8000 El Tigre',
'ZR 8000 ATAC',
'ZR 8000',
'ZR 9000 Thundercat iACT',
'ZR 9000 Thundercat EPS ATAC',
'ZR 9000 Thundercat EPS',
'ZR 9000 Thundercat ATAC',
'ZR 9000 Thundercat',
'ZR 9000 Sno Pro 137',
'ZR 9000 Sno Pro 129',
'ZR 9000 RR 137',
'ZR 9000 RR 129',
'ZR 9000 RR',
'ZR 9000 LXR',
'ZR 9000 Limited iACT',
'ZR 9000 Limited 137',
'ZR 9000 Limited 129',
'ZR 9000 Limited',
'ZR 9000 El Tigre',
'MM800 Mountain Max 800',
'SW1NSR Sidewinder SRX LE EPS',
'SW1NSR Sidewinder SRX LE',
'SW10XS46 Sidewinder XTX 146 SE',
'SW10XS41 Sidewinder XTX 141 SE',
'SW10XS37 Sidewinder XTX 137 SE',
'SW10XL46 Sidewinder XTX 146 LE',
'SW10XL41 Sidewinder XTX 141 LE',
'SW10XL37 Sidewinder XTX 137 LE',
'SW10XL Sidewinder XTX 1.75 LE 50th',
'SW10SG Sidewinder STX GT EPS',
'SW10SG Sidewinder STX GT',
'SW10SD46 Sidewinder STX 146 DX',
'SW10SD37 Sidewinder STX 137 DX',
'SW10RS Sidewinder RTX SE',
'SW10RL Sidewinder RTX LE 50th',
'SW10RL Sidewinder RTX LE',
'SW10MS62 Sidewinder MTX 162 SE',
'SW10MS53 Sidewinder MTX 153 SE',
'SW10ML62 Sidewinder MTX 162 LE 50th',
'SW10ML62 Sidewinder MTX 162 LE',
'SW10ML53 Sidewinder MTX 153 LE',
'SW10M62 Sidewinder MTX 162',
'SW10M53 Sidewinder MTX 153',
'SW10LS Sidewinder LTX SE',
'SW10LL Sidewinder LTX LE EPS',
'SW10LL Sidewinder LTX LE 50th',
'SW10LL Sidewinder LTX LE',
'SW10LG Sidewinder LTX GT EPS',
'SW10LG Sidewinder LTX GT',
'SW10LD Sidewinder LTX DX',
'SW10BS Sidewinder BTX SE',
'SW10BS Sidewinder BTX 153 1.75 SE',
'SW10BL53 Sidewinder BTX 153 LE',
'SW10BL Sidewinder BTX LE',
'SW10BL Sidewinder BTX 153 LE 50th',
'Sidewinder',
'TR8 Transporter 800',
'TR6 Transporter 600',
'TR4T Transporter Lite 2-Up',
'TR4 Transporter Lite'

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