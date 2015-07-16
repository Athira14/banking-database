import MySQLdb   

db = MySQLdb.connect(host = "localhost", user = "root",passwd = "athira", 
db = "bank") 
cursor = db.cursor()
from withdrawal import wcc
cursor.execute("select b.wno,a.name ,a.age,a.address,a.account_no,a.account_type 
from account a left join withdrawal b on a.account_no = %d"%wcc)

for row in cursor.fetchone():
	print row,'\t\t'
