import MySQLdb   
db = MySQLdb.connect(host="localhost", user="root",passwd="athira", 
db="bank") 
cursor = db.cursor()
cursor.execute("select * from loan_details group by loan_no")
db.commit()
for row in cursor.fetchall():
    no = row[0]
    name = row[1]
    loant = row[2]
    loanamt = row[3]
    print "loan_no: %d, name: %s, loan_type: %s, loan_amount: %d"%(no, name, loant, loanamt)
cursor.close()
