# frozen_string_literal: true

require 'transaction_history'

describe TransactionHistory do
  let(:transaction) { TransactionHistory.new }
  let(:time) { double(:time) }

  context 'upon creation:' do
    it 'should initialise with an empty history' do
      expect(transaction.history).to eq([])
    end
  end

  context 'creating a transaction' do
    before(:each) do
      allow(time).to receive(:date_of_transaction).and_return("07/04/2021")
    end

    it 'can build a credit transaction' do
      transaction.credit(500, 500)
      expect(transaction.history).to eq([{ date: "07/04/2021", credit: '%.2f' % 500, balance: '%.2f' % 500 }])
    end

    it 'can build a debit transaction' do
      transaction.debit(200, 300)
      expect(transaction.history).to eq([{ date: "07/04/2021", debit: '%.2f' % 200, balance: '%.2f' % 300 }])
    end
  end
end
