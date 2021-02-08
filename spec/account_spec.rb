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
end