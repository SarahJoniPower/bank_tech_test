require './transaction.rb'

class Account 

  attr_reader :balance, :transaction_history

  def initialize 
    @balance = 0
    @transaction_history = []
  end 

  def deposit(amount)
    @balance += amount
    date = Time.now.strftime "%d/%m/%Y"
    credit = sprintf('%.2f', amount)
    transaction = Transaction.new(credit: credit, date: date, debit: nil, balance: @balance)
    @transaction_history.push(transaction)
  end

  def withdrawal(amount)
    @balance -= amount
    date = Time.now.strftime "%d/%m/%Y"
    debit = sprintf('%.2f', amount)
    transaction = Transaction.new(credit: nil, date: date, debit: debit, balance: @balance)
    @transaction_history.push(transaction)
  end

  def statement
    puts 'date || credit || debit || balance'
    statement = @transaction_history.reverse_each do |transaction|
    puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{sprintf('%.2f',transaction.balance)}"
    end
  end

  # def add_to_history(transation)
  # end 

end 