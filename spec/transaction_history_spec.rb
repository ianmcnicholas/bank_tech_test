# frozen_string_literal: true

require 'transaction_history'

describe TransactionHistory do
  let(:transaction) { TransactionHistory.new }

  context 'upon creation:' do
    it 'should initialise with an empty history' do
      expect(transaction.history).to be_empty
    end
  end

  context 'creating a transaction' do
    before(:each) do
      now = Time.parse("2021-04-06")
      allow(Time).to receive(:now) { now }
    end

    it 'can build a credit transaction' do
      transaction.credit(500, 500)
      expect(transaction.history).to eq([{ date: "06/04/2021", credit: '%.2f' % 500, balance: '%.2f' % 500 }])
    end

    it 'can build a debit transaction' do
      transaction.debit(200, 300)
      expect(transaction.history).to eq([{ date: "06/04/2021", debit: '%.2f' % 200, balance: '%.2f' % 300 }])
    end
  end
end
