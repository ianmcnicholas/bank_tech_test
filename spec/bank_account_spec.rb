# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  let(:transactions) { double(:transactions) }
  let(:statements) { double(:statements) }
  let(:account) { BankAccount.new(0, transactions, statements) }

  context 'upon creation:' do
    it 'should initialise with a balance of 0' do
      expect(account.balance).to eq 0
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

    it 'should raise an error if the deposit is not a positive integer' do
      expect { account.deposit(-500) }.to raise_error 'You must deposit a positive amount'
      expect { account.deposit("string") }.to raise_error 'You must deposit a positive amount'
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

    it 'should raise an error if the withdrawal is not a positive integer' do
      expect { account.withdraw(-200) }.to raise_error 'You must withdraw a positive amount'
      expect { account.deposit("string") }.to raise_error 'You must deposit a positive amount'
    end
  end

  context 'printing a statement' do
    it 'should get a printed statement from Statements class' do
      allow(transactions).to receive(:history).and_return([])
      expect(statements).to receive(:format).with(transactions.history)
      account.print_statement
    end
  end
end
