require 'account'
require 'transaction'

describe Account do
  let(:account) { Account.new }

  it 'should be an instance of the Bank class' do
    expect(subject).to be_instance_of Account
  end

  describe '#balance' do
    it 'should initialize with a balance of 0' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'should add deposit amount to the account balance' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end

    it 'can add multiple deposits consecutively to the account balance' do
      account.deposit(1000)
      account.deposit(2000)
      expect(account.balance).to eq 3000
    end
  end

  describe '#withdrawal' do
    it 'should subtract the withdrawal amount from the account balance' do
      account.deposit(1000)
      account.withdrawal(500) 
      expect(account.balance).to eq 500
    end
  end

  describe '#transaction_history' do
    it 'should initialize with a transaction history empty array' do
      expect(account.transaction_history).to eq []
    end

    it 'should add a deposit to the transaction history array' do
      account.deposit(1000)
      expect(account.transaction_history).to_not eq []
    end
  
    it 'should add a withdrawal to the transaction history array' do
      account.withdrawal(500)
      expect(account.transaction_history).to_not eq []
    end

    it 'should add multiple instances of transaction to the transaction history array' do
      account.deposit(1000)
      account.withdrawal(500) 
      expect(account.transaction_history.length).to eq 2
    end
  end

  describe '#print_statement' do
    it 'should display a string of the history of the accounts transactions' do
      allow(Time).to receive(:now).and_return(DateTime.parse("2012-01-10 11:08:22 +0000"))
      account.deposit(1000)
      expect { account.print_statement }.to output("date || credit || debit || balance\n10/01/2012 || 1000.00 ||  || 1000.00\nend of statement\n").to_stdout
    end
  end
end
