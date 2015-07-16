#To insert data into account table of banking database and display the account detils

import MySQLdb

#Connecting database to mysql by giving your host,username,password and databasename
db = MySQLdb.connect(host="localhost", user="root", passwd="athira", db="bank")

CHOICE = 'y'

try:
    cursor = db.cursor()  # Cursor object creation
    while CHOICE == 'y':  #Loop for reading choice
        
        no = int(raw_input( "Enter No: "))
        name = raw_input( "Enter name: ")
        age = int(raw_input("Enter the age: "))
        address = raw_input("enter the address: ")
        account_no = int(raw_input("enter the account_no: "))
        amount = int(raw_input("enter the amount: "))
        
        #Selecting the account_typeid and account_type from account_type table
        cursor.execute("select * from account_types") 
        print "enter the account_typeid from the list"
        for row in cursor.fetchall():
            print "account_typeid: %d, account_type: %s"%(row[0], row[1])
        aacc_typeid = int(raw_input())
        
        #Inserting the details into table account in bank database
        cursor.execute(
        	    "Insert into account Values (%s, %s, %s, %s, %s, %s, %s)", 
			    (no, name, age, address, account_no, amount, aacc_typeid)
		)
        CHOICE = raw_input("do u want conti(y/n)")
except Exception as e:
	print str(e)	
db.commit()

#Joining tables account and account_type and selecting details from both table
cursor.execute(
		"select a.name, a.age, a.address, a.account_no, b.account_type, \
        a.amount from account a join account_types b on \
        a.acc_typeid = b.acc_typeid where a.account_no = %d" % account_no
)

for row in cursor.fetchall():
	name = row[0]
	age = row[1]
	addr = row[2]
	acc = row[3]
	act = row[4]
	amt = row[5]
	print "name: %s, age: %d, address: %s,account_no: %d, account_type: %s, \
           amount: %d"%(name, age, addr, acc, act, amt)

cursor.close()
