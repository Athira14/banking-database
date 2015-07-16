#To display the account details of every customers
import MySQLdb   

db = MySQLdb.connect(
	    host="localhost", user="root", passwd="athira", db="bank"
) 
cursor = db.cursor()
#selecting the details from table account and account_types
cursor.execute(
	"select a.name, a.age, a.address, a.account_no, b.account_type, \
    a.amount from account a, account_types b where a.acc_typeid = b.acc_typeid"
)

db.commit()

for row in cursor.fetchall():
	name = row[0]
	age = row[1]
	add = row[2]
	acc = row[3]
	acct = row[4]
	amt = row[5]
	print "name: %s, age: %d, address: %s, account_no: %d, account_type: %s, \
           amount_deposit: %d"%(name, age, add, acc, acct, amt)
cursor.close()
