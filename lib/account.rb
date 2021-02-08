require './transaction.rb'

class Account 

  attr_reader :balance, :transaction_history

  def initialize 
    @balance = 0
    @transaction_history = []
  end 

  def deposit(amount, date)
    @balance += amount
    transaction = Transaction.new(credit: amount, date: date, debit: 0, balance: @balance)
    @transaction_history.push(transaction)
  end

  def withdrawal(amount, date)
    @balance -= amount
    transaction = Transaction.new(credit: 0, date: date, debit: amount, balance: @balance)
    @transaction_history.push(transaction)
  end

  # def statement
  #   puts 'date || credit || debit || balance'
  #   statement = @transaction_history.map do |transaction|
  #   puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
  #   end
  # end

  # def add_to_history(transation)
  # end 

end 