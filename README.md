# Bank Tech Test 

This programme models a bank account. 

It's written in ruby and you can interact with the code through irb by moving into the project directory and running this command in the terminal: irb -r ./lib/account.rb

You can:
- create a new bank account: account = Account.new
- check your balance:   account.balance 
- deposit money:        account.deposit(credit)
- withdrawal money:     account.withdrawal(debit)        
- print a statement     account.print_statement

An account statement contains a list of recent transations in reverse order with details of: 
    - date
    - credit
    - debit
    - balance

Things left to do:
- need to work on the dependency injection
- potentially a balance method?
