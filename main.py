
#from account import account_list	  	
s=int(raw_input("enter the choice 1.account 2.close account 3.withdrawal 4.loan 5.list account 6.list loan details 7.close loan "))
if s==1:
	from account import account_details
	
elif s==2:
	from account import close_acc
	from account import account_list
elif s==3:
	from withdraw import withdrawal
	#from withdraw import withdraw_list	
	from withdraw import update
elif s==4:
	from loan import loan_detail
	
elif s==5:
	from account import account_list
elif s==6:
	from loan import loan_list
else:
	from loan import close_loan
