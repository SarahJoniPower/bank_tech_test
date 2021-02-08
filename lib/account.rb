require './transaction.rb'

class Account 

  attr_reader :balance, :transaction_history, :transaction

  def initialize 
    @balance = 0
    @transaction_history = []
    @transaction = Transaction.new
  end 

  def deposit(amount, date)
    @balance += amount
    # @transaction.credit = amount
    # @transaction.date = date
    # @transaction_history.push(@transaction)
    @transaction_history.push({credit: amount, date: date})
  end

  def withdrawal(amount, date)
    @balance -= amount
    @transaction_history.push({debit: amount, date: date})
  end

  def statement
    @transaction_history
  end

  # def add_to_history(transation)
  # end 

end 