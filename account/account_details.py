import MySQLdb   
db = MySQLdb.connect(host="localhost", user="root",passwd="athira", 
db="bank") 
s='y'
try:
	cursor = db.cursor()
    while s == 'y':
        ano=int(raw_input( "Enter No: "))
        aname=raw_input( "Enter name: ")
        aage=int(raw_input("Enter the age: "))
        aaddress=raw_input("enter the address: ")
        aacc=int(raw_input("enter the account_no: "))
        amount=int(raw_input("enter the amount: "))
        aacc_typeid=int(raw_input("enter the account_typeid(101.savings account 102.current account: )"))
        if aacc_typeid == 101 or aacc_typeid == 102:
            cursor.execute("Insert into account Values (%s, %s, %s, %s, %s, %s, %s)", 
			(ano, aname, aage, aaddress, aacc, amount, aacc_typeid))
		else:
			print "invalid account_typeid"
		s = raw_input("do u want conti(y/n)")
except Exception as e:
	print e	
db.commit()
cursor.execute("select a.name, a.age, a.address, a.account_no, b.account_type, a.amount from account a join account_types b on a.account_no = %d and b.acc_typeid = %d"%(aacc,aacc_typeid));
for row in cursor.fetchall():
	name = row[0]
	age = row[1]
	addr = row[2]
	acc = row[3]
	act = row[4]
	amt = row[5]
	print "name: %s, age: %d, address: %s,account_no: %d, account_type: %s, amount: %d"%(name, age, addr, acc, act, amt)
cursor.close()
