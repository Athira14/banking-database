#To enter the loan_details into table lonan_details and display it
import MySQLdb   

db = MySQLdb.connect(host="localhost", user="root", passwd="athira", db="bank") 

try:
    cursor = db.cursor()
    s ='y'
    while s == 'y':
        lid = int(raw_input("Enter loan_no:"))
        lname = raw_input("enter the name:")
        ltype = raw_input("enter the loan_type:")
        lamount = int(raw_input("Enter loan_amount:"))
        cursor.execute(
            "Insert into loan_details Values (%s,%s,%s,%s)", (lid,lname,ltype,lamount)
        )
        s = raw_input("do u want conti(y/n)")

except Exception as e:
    print e	
db.commit()

cursor.execute("select * from loan_details where loan_no = %d" %lid)
for row in cursor.fetchall():
	#print row
    loan_no = row[0]
    name = row[1]
    ltype = row[2]
    lamt = row[3]
    print "loan_no:%d,name:%s,loan_type:%s,loan_amount:%d"%(loan_no, name, ltype, lamt)

cursor.close()
	

