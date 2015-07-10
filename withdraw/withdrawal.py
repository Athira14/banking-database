import MySQLdb   

db = MySQLdb.connect(host="localhost", user="root",passwd="athira", 
db="bank") 


s='y'
try:
		while s=='y':
			wid=int(raw_input( "Enter withdrawal_no: "))
			wcc=int(raw_input("enter the account_no"))
			wamount=int(raw_input("enter the withdrawal_amount"))
			cursor = db.cursor()
			cursor.execute("Insert into withdrawal Values (%s,%s,%s)",(wid,wcc,wamount))
			s=raw_input("do u want conti(y/n)")
except:
		print "sorry this account doesn't exist"	
db.commit()

