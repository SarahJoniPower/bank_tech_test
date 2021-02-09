require './transaction.rb'

class Account 

  attr_reader :balance, :transaction_history

  def initialize 
    @balance = 0
    @transaction_history = []
  end 

  def deposit(amount)
    @balance += amount
    credit = format(amount)
    transaction = Transaction.new(credit: credit, date: get_date, debit: nil, balance: @balance)
    @transaction_history.push(transaction)
  end

  def withdrawal(amount)
    @balance -= amount
    debit = format(amount)
    transaction = Transaction.new(credit: nil, date: get_date, debit: debit, balance: @balance)
    @transaction_history.push(transaction)
  end

  def statement
    puts 'date || credit || debit || balance'
    statement = @transaction_history.reverse_each do |transaction|
    puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{format(transaction.balance)}"
    end
  end

  # def add_to_history(transation)
  #   transaction = Transaction.new(credit: nil, date: get_date, debit: debit, balance: @balance)
  #   @transaction_history.push(transaction)
  # end 

  def format(amount)
    sprintf('%.2f', amount)
  end

  def get_date
    Time.now.strftime "%d/%m/%Y"
  end

end 