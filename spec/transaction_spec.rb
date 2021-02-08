require 'account'
require 'transaction'

describe Transaction do 

  it 'should record the credit from a desposit' do
    account = Account.new
    account.deposit(1000, '10-01-2012')
    expect(account.transaction.credit).to eq 1000
  end
end 