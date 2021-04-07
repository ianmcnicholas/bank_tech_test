require 'bank_account'

describe BankAccount do
  let(:transactions) { double(:transactions) }
  let(:account) { BankAccount.new(0, transactions) }

  context 'upon creation:' do
    it 'should initialise with a balance of 0' do
      expect(account.balance).to eq 0
    end

    it 'should create an empty history of transactions' do
      allow(transactions).to receive(:history).and_return([])
      expect(account.transactions.history).to eq([])
    end
  end

  context 'making a deposit:' do
    it 'should increase the balance when a deposit is made' do
      allow(transactions).to receive(:credit).with(500, 500)
      account.deposit(500)
      expect(account.balance).to eq 500
    end

    it 'should tell the Transactions class to build a credit transaction' do
      expect(transactions).to receive(:credit).with(500, 500)
      account.deposit(500)
    end
  end

  context 'making a withdrawal:' do
    it 'should increase the balance when a withdrawal is made' do
      allow(transactions).to receive(:debit).with(200, -200)
      account.withdraw(200)
      expect(account.balance).to eq(-200)
    end

    it 'should tell the Transactions class to build a debit transaction' do
      expect(transactions).to receive(:debit).with(200, -200)
      account.withdraw(200)
    end
  end
end
