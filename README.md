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


Plan
My initial thoughts are this will involve two classes - an account class, and a transation class, which will be used to create the account statement. 

Questions to consider: should methods be called on the full class or on an instance of the class?

I'll use rspec to test, simplecov to check I have good test coverage and rubocop to check my code is neat.
