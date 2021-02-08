
class Transaction 
  attr_accessor :date, :credit, :debit, :balance

  def initialize(credit:, date:, debit:, balance:)
    @date = date
    @credit = 0
    @debit = 0
    @balance = balance
  end 
end 