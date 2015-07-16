#To delete a loan_detail from loan_details
import MySQLdb   

db = MySQLdb.connect(host="localhost", user="root", passwd="athira", db="bank") 
cursor = db.cursor()
loan_no = int(raw_input("Enter loan_no: "))

try:
    cursor.execute("delete from loan_details where loan_no = %d" % loan_no)	
    print "Loan closed"

except:
    print "invalid loan_no"

db.commit()
cursor.close()
