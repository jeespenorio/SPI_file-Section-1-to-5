import pandas as pd

#initialize data

data1 = {
    'Make':['atv/utv/snow'],
    'Model':['All Model'],
    'Vendor Code':['NACH'],
    'Vendor Name':['NACHMAN INTERNATIONAL CO. LTD'],
    'Type':['12VDC.2 WIRE'],
    
    'MPN':['1101018'],
    
    'AD LIST ITEM NUMBER':['SM-01615'],
    
    'Vendor Notes':['OEM# 287847512VDC.2 WIRE, WIRE LENGTH:14.5/15.5CM.']
}

#For this column = 'Model':['All Model']
#List All Models
list_models = [

'340 Edge',
'340',
'340 LX',
'340 Touring',
'340 Transport',
'440 IQ',
'500 XC SP',
'500 XC',
'550 INDY',
'550 INDY 144',
'550 INDY LXT',
'550 INDY Adventure 144',
'550 INDY Voyager',
'550 INDY Voyageur 144',
'550 INDY Voyageur 155',
'550 INDY Adventure 155',
'550 INDY LXT 144 White Lightning',
'550 INDY LXT 144 Turbo Silver',
'550 INDY LXT 144 Indy Red',
'550 INDY LXT 144 Blue Fire Metallic',
'550 INDY LXT Sonic Blue',
'550 INDY LXT 144 Vogue Silver',
'550 INDY LXT Northstar Edition',
'550 INDY LXT Sunset Red',
'550 INDY LXT White Lightning',
'550 INDY EVO 121',
'550 INDY Sport 121',
'550 IQ Shift',
'550 IQ LXT',
'550 LX',
'550 RMK EVO 144',
'550 Shift 136',
'550 SwitchBack Sport 144',
'550 Transport',
'550 Voyageur 144',
'550 Voyageur 155',
'550 WideTrak LX',
'600 Dragon SP',
'600 Dragon IQ',
'600 Dragon SwitchBack',
'600 HO IQ Touring',
'600 HO CFI Touring',
'600 HO CFI SwitchBack',
'600 HO IQ',
'600 HO IQ CFI',
'600 HO IQ LX CFI',
'600 HO Fusion',
'600 INDY',
'600 INDY SP',
'600 INDY Voyager',
'600 INDY SP LE',
'600 INDY Voyageur',
'600 INDY SP TD Series LE',
'600 INDY XC 129',
'600 INDY SP 129',
'600 INDY XC 137',
'600 INDY XCR',
'600 INDY Adventure 137',
'600 INDY SP 137',
'600 IQ Shift',
'600 IQ',
'600 IQ Shift 136',
'600 IQ Touring',
'600 IQ LX',
'600 IQ LXT',
'600 IQ Widetrack',
'600 IQ Racer',
'600 IQ Widetrak',
'600 PRO X',
'600 PRO-RMK 155',
'600 PRO X2',
'600 RMK 144',
'600 RMK 155',
'600 RMK',
'600 RR',
'MX Z 600 Renegade X',
'Formula III 600 R',
'600 Rush',
'Summit 600 R Sport',
'MX Z 600 R Sport',
'MX Z 600 Renegade',
'MX Z 600 R X',
'600 Rush PRO-R',
'600 Rush PRO-S',
'600 Rush LX',
'600 Rush XCR',
'600 Shift 136',
'600 SwitchBack',
'600 SwitchBack Adventure',
'600 SwitchBack PRO-R',
'600 SwitchBack Assault 144',
'600 SwitchBack PRO-S',
'600 SwitchBack SP 144',
'600 SwitchBack XCR',
'600 Voyageur 144',
'700 Dragon IQ',
'700 Dragon RMK 155',
'700 Dragon RMK 163',
'700 Dragon SwitchBack',
'700 Dragon',
'700 IQ',
'700 RMK 155',
'700 RMK 144',
'700 RMK 151',
'700 RMK 159',
'700 RMK',
'700 SwitchBack',
'800 Assault RMK 146',
'800 Dragon SP',
'800 Dragon',
'800 Dragon RMK 155',
'800 Dragon RMK 163',
'800 Dragon Swtichback',
'800 Dragon IQ',
'800 INDY SP',
'800 INDY SP LE',
'800 INDY XC 129',
'800 INDY XC 137',
'800 INDY XCR',
'800 INDY Adventure 137',
'800 IQ',
'800 RMK 144',
'800 RMK 155',
'800 RMK',
'800 RMK SP 144',
'800 RMK SP 151',
'800 RMK Assault 155',
'800 RMK Assault 155 LE',
'800 RMK Assault 155 3in.',
'800 RMK KHAOS 155',
'800 RMK KHAOS 155 3in.',
'800 PRO X',
'800 PRO XR',
'800 PRO-RMK 163',
'800 PRO-RMK 155',
'800 PRO-RMK LE',
'800 PRO-RMK 163 Terrain Dominator',
'800 PRO-RMK 155 Terrain Dominator',
'800 PRO-RMK 155 3in.',
'800 PRO-RMK 163 3in.',
'800 PRO X2',
'800 PRO-RMK 174 LE',
'800 PRO-RMK 155 LE',
'800 PRO-RMK 163 LE',
'800 PRO-RMK 174',
'800 Rush PRO-R',
'800 Rush',
'800 Rush PRO-R LE',
'800 Rush PRO-X',
'800 Rush PRO-S',
'800 Rush PRO-S LE',
'800 Rush XCR',
'800 SwitchBack',
'Skandic V-800 SWT',
'800 SwitchBack Assault 144',
'800 SwitchBack PRO-R',
'800 SwitchBack Adventure',
'800 SwitchBack PRO-R LE',
'800 SwitchBack Assault LE',
'800 SwitchBack PRO-X',
'800 SwitchBack PRO-S',
'800 SwitchBack Assault 144 TD Series LE',
'800 SwitchBack PRO-S LE',
'800 SwitchBack XCR',
'850 INDY XC 129',
'850 INDY XC 137',
'850 INDY XCR',
'850 INDY Adventure 137',
'850 INDY VR1 137',
'850 INDY VR1 129',
'850 INDY XC Launch Edition 137',
'850 INDY XC Launch Edition 129',
'850 INDY XCR 136',
'850 INDY XCR 128',
'850 PRO-RMK 174',
'850 PRO-RMK 163',
'850 PRO-RMK 163 3in.',
'850 PRO-RMK 155',
'850 PRO-RMK 155 3in.',
'850 PRO-RMK QD2 155 2.75in.',
'850 PRO-RMK QD2 155 3in.',
'850 PRO-RMK QD2 163 3in.',
'850 PRO-RMK QD2 165 2.75in.',
'850 PRO-RMK QD2 174 3in.',
'850 PRO-RMK Matryx Slash 155 3in.',
'850 PRO-RMK AXYS 165 2.75in.',
'850 PRO-RMK Matryx Slash 155 2.75in.',
'850 PRO-RMK AXYS 155 2.75in.',
'850 PRO-RMK AXYS 155 3in.',
'850 PRO-RMK Matryx Slash 163 3in.',
'850 PRO-RMK Matryx 155',
'850 PRO-RMK Matryx Slash 165 2.75in.',
'850 PRO-RMK AXYS 163 3in.',
'850 PRO-RMK Slash 165',
'850 PRO-RMK Slash 155',
'850 PRO-RMK Slash 163',
'850 RMK KHAOS 155',
'850 RMK KHAOS 155 3in.',
'850 RMK KHAOS QD2 155 2.75in.',
'850 RMK KHAOS QD2 155 3in.',
'850 RMK KHAOS 163 2.6in.',
'850 RMK KHAOS QD2 163 3in.',
'850 RMK KHAOS QD2 165 2.75in.',
'850 RMK KHAOS AXYS 155 3in.',
'850 RMK KHAOS AXYS 163 3in.',
'850 RMK KHAOS AXYS 155 2.75in.',
'850 RMK KHAOS Matryx Slash 165 2.75in.',
'850 RMK KHAOS Matryx Slash 146',
'850 RMK KHAOS Matryx Slash 163 3in.',
'850 RMK KHAOS Matryx 155',
'850 RMK KHAOS Matryx Slash 155',
'850 RMK KHAOS AXYS 165 2.75in.',
'850 RMK KHAOS Slash 155',
'850 RMK KHAOS Slash 146',
'850 RMK KHAOS Slash 165',
'850 RMK KHAOS Slash 163',
'850 Rush PRO-S',
'850 Rush XCR',
'850 SKS 155',
'850 SKS 146',
'850 SwitchBack Assault 144',
'850 SwitchBack PRO-S',
'850 SwitchBack XCR',
'850 SwitchBack Assault 146',
'850 SwitchBack XC 146',
'FS IQ Touring',
'FST IQ Touring',
'FST IQ Cruiser',
'FST IQ',
'FST IQ LX',
'FST SwitchBack',
'FS Classic',
'FST Classic',
'FS Touring',
'FST Touring',
'FS IQ Widetrack',
'INDY EVO',
'INDY EVO ES',
'IQ Turbo Dragon',
'IQ Turbo LX',
'RMK EVO 144',
'RMK EVO ES 144',
'RMK Shift 155',
'Super Sport',
'Supersport M-10',
'Trail RMK',
'Trail Touring DLX',
'Trail Touring',
'Turbo IQ',
'Turbo IQ LX',
'Turbo IQ LXT',
'Turbo SwitchBack',
'600 IQ Widetrak',
'550 WideTrak LX'
    



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
final_df
