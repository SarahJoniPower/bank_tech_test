# Bank Tech Test 

This programme models a bank account. It's written in ruby and you can interact with the code through irb. 

You can:

(account = Account.new)
- check your balance:   account.balance 
- deposit money:        account.deposit(amount)
- withdrawal money:     account.withdrawal(amount)        
- print a statement     account.statement

An account statement contains a list of recent transations in reverse order with details of: 
    - date
    - credit
    - debit
    - balance

Things left to do:
- refractor out the transactions from deposit and withdrawal.
- make a helper for rsepc tests and also use more mocks and doubles?
- need to work on the dependency injection 
- the formatting of the dates and numbers in the statement
- testing for the transactions class
- testing for the statement method 
