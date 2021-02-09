require './lib/transaction.rb'

class Account 
  attr_reader :balance, :transaction_history

  def initialize 
    @balance = 0
    @transaction_history = []
  end

  def deposit(credit)
    @balance += credit
    transaction = Transaction.new(credit: format(credit), date: date, debit: nil, balance: @balance)
    @transaction_history.push(transaction)
    return "You deposited #{format(credit)} Your new balance is #{@balance}"
  end

  def withdrawal(debit)
    @balance -= debit
    transaction = Transaction.new(credit: nil, date: date, debit: format(debit), balance: @balance)
    @transaction_history.push(transaction)
    return "You withdrew #{format(debit)} Your new balance is #{@balance}"
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @transaction_history.reverse_each do |transaction|
    puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{format(transaction.balance)}"
    end
    puts 'end of statement'
  end

  def format(amount)
    sprintf('%.2f', amount)
  end

  def date
    Time.now.strftime '%d/%m/%Y'
  end
end
