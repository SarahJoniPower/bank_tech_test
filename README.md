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

To run the tests: move into the project directory and in the terminal run: rspec

Notes and Questions
- Thinking about dependency injection - do I need to be creating an instance of Transaction in the initialize of Account instead? Couldn't work out if this was needed/ how to do it.
- If I'm getting a coverage of 100% from SimpleCov, is there value in continuing to write out tests for things like edge cases?
- I think I should have refactored out creating a transaction and pushing it into the transaction_history array from the deposit and withdrawal methods - but couldn't work out how/ wasn't totally sure it was a good idea. 
