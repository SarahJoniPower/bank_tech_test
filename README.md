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
- refractor out the transactions from deposit and withdrawal and also the formatting.
- make a helper for rsepc tests and also use more mocks and doubles?
- need to work on the dependency injection
- testing for the transactions class
