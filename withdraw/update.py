import MySQLdb   
db = MySQLdb.connect(host="localhost", user="root", passwd="athira", 
db="bank") 
cursor = db.cursor()
from withdrawal import wcc, wamount
cursor.execute("update account a set a.amount = a.amount - %d where a.account_no = %d"%(wamount,wcc))
db.commit()
cursor.execute("select a.name,a.age,a.address,a.account_no,b.amount_withdraw ,a.amount from account a ,withdrawal b where a.account_no = %d"%wcc)
row = cursor.fetchall()[-1]
name = row[0]
age = row[1]
add = row[2]
acc = row[3]
amtw = row[4]
amt = row[5]
print "name: %s, age: %d, address: %s, account_no: %d, amount_withdraw: %d, balance_amount: %d"%(name, age, add, acc, amtw, amt)

