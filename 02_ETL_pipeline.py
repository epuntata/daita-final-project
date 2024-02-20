import pandas as pd

fd = open(".\\dataset\\adv.sql", "r")
sqlFile = fd.read()
fd.close()
sqlLines = sqlFile.splitlines()

sqlDictList = []
for line in sqlLines[6:]:
    id, tv, actor = line[47:-2].split(",")
    actor = actor.replace("\'", "")
    temp = {"adv_ID": id, "TV": tv, "Actor": actor}
    sqlDictList.append(temp)

df = pd.DataFrame.from_dict(sqlDictList)
df['adv_ID'] =df['adv_ID'].astype(int)
df.set_index('adv_ID', inplace=True)

xls = pd.read_excel(".\\dataset\\adv_sales.xls", "Sheet1", index_col=0)
xls.set_index('adv_ID', inplace=True)

csv = pd.read_csv(".\\dataset\\data_adv.csv", index_col=0)
csv.set_index('adv_ID', inplace=True)

social = pd.read_csv(".\\dataset\\social.csv", index_col=0)

appoggio1 = pd.merge(csv, social, on="adv_ID")
appoggio2 = pd.merge(appoggio1, xls, left_on="adv_ID", right_on="adv_ID")
result = pd.merge(appoggio2, df, on="adv_ID")

result.to_csv(".\\result.csv")