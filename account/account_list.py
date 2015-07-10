import MySQLdb   

db = MySQLdb.connect(host="localhost", user="root",passwd="athira", 
db="bank") 
cursor = db.cursor()
#from account_details import aacc
cursor.execute("select * from account group by no")
db.commit()
for row in cursor.fetchall():
	#print row
	no=row[0]
	name=row[1]
	age=row[2]
	add=row[3]
	acc=row[4]
	acct=row[5]
	amt=row[6]
	print "no:%d,name:%s,age:%d,address:%s,account_no:%d,account_type:%s,amount_deposit:%d"%(no,name,age,add,acc,acct,amt)
