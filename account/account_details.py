import MySQLdb   

db = MySQLdb.connect(host="localhost", user="root",passwd="athira", 
db="bank") 
s='y'
try:
	while s=='y':
		ano=int(raw_input( "Enter No: "))
		aname=raw_input( "Enter name: ")
		aage=int(raw_input("Enter the age"))
		aaddress=raw_input("enter the address")
		aacc=int(raw_input("enter the account_no"))
		aacc_type=raw_input("enter the account_type")
		amount=int(raw_input("enter the amount"))
		cursor = db.cursor()

		cursor.execute("Insert into account Values (%s,%s,%s,%s,%s,%s,%s)",(ano,aname,aage,aaddress,aacc,aacc_type,amount))
		s=raw_input("do u want conti(y/n)")
except:
	print "this account type doesnt exits"	
db.commit()
cursor.execute("select * from account where account_no=%d"%aacc);
for row in cursor.fetchall():
	
	print row,'\t\t'
	no=row[0]
	name=row[1]
	age=row[2]
	addr=row[3]
	acc=row[4]
	act=row[5]
	amt=row[6]
	print "no:%d,name:%s,age:%d,address:%s,account_no:%daccount_type:%s,amount:%d"%(no,name,age,addr,acc,act,amt)

