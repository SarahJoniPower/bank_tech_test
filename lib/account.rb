require './transaction.rb'

class Account 

  attr_reader :balance

  def initialize 
    @balance = 0
    # @transation_history = []
    # @transaction = Transaction.new
  end 

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @balance -= amount
  end

#   def statement
#   end 


#   def add_to_history(transation)
#   end 

end 