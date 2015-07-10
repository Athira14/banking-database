import MySQLdb   

db = MySQLdb.connect(host="localhost", user="root",passwd="athira", 
db="bank") 
cursor = db.cursor()
from withdrawal import wcc,wamount

cursor.execute("update account a set a.amount= a.amount-%d where a.account_no=%d"%(wamount,wcc))
db.commit()
#cursor.execute("select amount from account where account_no=%d"%wcc)
cursor.execute("select a.name,a.age,a.address,a.account_no,a.account_type,b.amount_withdraw ,a.amount from account a ,withdrawal b where a.account_no=%d"%wcc)
#cursor.execute("select a.name,a.age,a.address,a.account_no,a.account_type,b.amount_withdraw ,a.amount from account a join withdrawal b on a.account_no=%d"%wcc)
row = cursor.fetchall()[-1]
	#print row
name=row[0]
age=row[1]
add=row[2]
acc=row[3]
act=row[4]
amtw=row[5]
amt=row[6]
print "name:%s,age:%d,address:%s,account_no=%d,account_type:%s,amount_withdraw:%d,balance_amount:%d"%(name,age,add,acc,act,amtw,amt)
