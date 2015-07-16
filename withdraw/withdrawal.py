#To enter the withdrawal details
import MySQLdb   
db = MySQLdb.connect(host="localhost", user="root",passwd="athira", db="bank") 
CHOICE = 'y'

try:
    cursor = db.cursor()
    while CHOICE == 'y':
        wid = int(raw_input( "Enter withdrawal_no:"))
        wcc = int(raw_input("enter the account_no"))
        wamount = int(raw_input("enter the withdrawal_amount"))
        cursor.execute("Insert into withdrawal Values (%s, %s, %s)", (wid, wcc, wamount))
        CHOICE = raw_input("do u want conti(y/n)")

except Exception as e:
    print e					

db.commit()
cursor.close()
