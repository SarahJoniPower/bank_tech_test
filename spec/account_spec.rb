require 'account'

describe Account do

  it 'should be an instance of the Bank class' do
    expect(subject).to be_instance_of Account
  end

  describe '#balance' do
    it "should initialize with a balance of 0" do
      account = Account.new
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'should add deposit amount to the account balance' do
      account = Account.new
      account.deposit(1000, '10-01-2012')
      expect(account.balance).to eq 1000
    end 

    it 'can add multiple deposits consecutively to the account balance' do
      account = Account.new
      account.deposit(1000, '10-01-2012')
      account.deposit(2000, '13-01-2012')
      expect(account.balance).to eq 3000
    end
  end

  describe '#withdrawal' do
    it 'should subtract the withdrawal amount from the account balance' do
      account = Account.new
      account.deposit(1000, '10-01-2012')
      account.withdrawal(500, '14-01-2012') 
      expect(account.balance).to eq 500
    end 
  end

  describe '#transaction_history' do
    it 'should initialize with a transaction history empty array' do
      account = Account.new
      expect(account.transaction_history).to eq []
    end

    it 'should add a deposit to the transaction history array' do
      account = Account.new
      account.deposit(1000, '10-01-2012')
      expect(account.transaction_history).to eq [{credit: 1000, date: '10-01-2012'}]
    end
  
    it 'should add a deposit and a withdrawal to the transaction history array' do
      account = Account.new
      account.deposit(1000, '10-01-2012')
      account.withdrawal(500, '14-01-2012') 
      expect(account.transaction_history).to eq [
        {credit: 1000, date: '10-01-2012'}, 
        {debit: 500, date: '14-01-2012'}]
    end
  end
end