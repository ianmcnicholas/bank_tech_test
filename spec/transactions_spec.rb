# frozen_string_literal: true

require 'transactions'

describe Transactions do
  let(:transaction) { Transactions.new }

  context 'upon creation:' do
    it 'should initialise with an empty history' do
      expect(transaction.history).to eq([])
    end
  end

  context 'creating a transaction' do
    it 'can build a credit transaction' do
      transaction.credit(500, 500)
      expect(transaction.history).to eq([{ date: Time.now.strftime('%d/%m/%Y'), credit: '%.2f' % 500, balance: '%.2f' % 500 }])
    end

    it 'can build a debit transaction' do
      transaction.debit(200, 300)
      expect(transaction.history).to eq([{ date: Time.now.strftime('%d/%m/%Y'), debit: '%.2f' % 200, balance: '%.2f' % 300 }])
    end
  end
end
