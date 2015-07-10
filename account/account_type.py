import MySQLdb   

db = MySQLdb.connect(host="localhost", user="root",passwd="athira", 
db="bank") 
s='y'
while s=='y':
	aid=int(raw_input( "Enter accounttypeid: "))

	
	acc=raw_input("enter the account_type")
    


#db= pyodbc.connect('DRIVER={SQL Server};SERVER=localhoast;DATABASE=tutorial')

	cursor = db.cursor()

	cursor.execute("Insert into account_types Values (%s,%s)",(aid,acc))
	s=raw_input("do u want conti(y/n)")
	
db.commit()
