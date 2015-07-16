
 	
CHOICE = int(raw_input(
	    "enter the choice 1.account 2.close account 3.withdrawal \
        4.loan 5.list account 6.list loan details 7.close loan 8.add account_type")
)
if CHOICE == 1:
	from account import account_details
elif CHOICE == 2:
	from account import close_acc
	from account import account_list
elif CHOICE == 3:
	from withdraw import withdrawal
	from withdraw import update
elif CHOICE == 4:
	from loan import loan_detail
elif CHOICE == 5:
	from account import account_list
elif CHOICE == 6:
	from loan import loan_list
elif CHOICE == 7:
	from loan import close_loan
else:
	from account import account_type
