require './transaction.rb'

class Account 

  attr_reader :balance, :transaction_history

  def initialize 
    @balance = 0
    @transaction_history = []
    # @transaction = Transaction.new
  end 

  def deposit(amount, date)
    @balance += amount
    @transaction_history.push({credit: amount, date: date})
  end

  def withdrawal(amount, date)
    @balance -= amount
    @transaction_history.push({debit: amount, date: date})
  end

#   def statement
#   end 

  # def add_to_history(transation)
  # end 

end 