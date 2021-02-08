require './transaction.rb'

class Account 

  attr_reader :balance, :transaction_history

  def initialize 
    @balance = 0
    @transaction_history = []
    # @transaction = Transaction.new
  end 

  def deposit(amount)
    @balance += amount
    @transaction_history.push(amount)
  end

  def withdrawal(amount)
    @balance -= amount
  end

#   def statement
#   end 

  # def add_to_history(transation)
  # end 

end 