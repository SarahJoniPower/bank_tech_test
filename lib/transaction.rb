
class Transaction 
  attr_accessor :date, :credit, :debit, :balance

  def initialize(credit:, date:, debit:, balance:)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end 
end 