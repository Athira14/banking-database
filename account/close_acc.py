import MySQLdb   
db = MySQLdb.connect(host = "localhost", user = "root", passwd = "athira", 
db = "bank") 
cursor = db.cursor()
acc = int(raw_input("please enter the account_no"))
try:
	cursor.execute("delete from withdrawal where account_no = %d" %acc);
	cursor.execute("delete from account where account_no = %d" %acc);
	db.commit();
	print "Account deleted"

except Exception as e:
	print str(e)	


