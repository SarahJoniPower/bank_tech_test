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
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end 

    it 'can add multiple deposits consecutively to the account balance' do
      account = Account.new
      account.deposit(1000)
      account.deposit(2000)
      expect(account.balance).to eq 3000
    end
  end

  describe '#withdrawal' do
    it 'should subtract the withdrawal amount from the account balance' do
      account = Account.new
      account.deposit(1000)
      account.withdrawal(500) 
      expect(account.balance).to eq 500
    end 
  end
end