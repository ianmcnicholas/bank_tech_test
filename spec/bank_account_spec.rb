require 'bank_account'

describe BankAccount do

  let(:account) { BankAccount.new}

  it 'should initialise with a balance of 0' do
    expect(account.balance).to eq 0
  end

  it 'should increase the balance when a deposit is made' do
    account.deposit(500)
    expect(account.balance).to eq 500
  end

  it 'should increase the balance when a withdrawal is made' do
    account.withdraw(200)
    expect(account.balance).to eq -200
  end



end
