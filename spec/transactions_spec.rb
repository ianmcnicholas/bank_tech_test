require 'transactions'

describe Transactions do

  let(:transaction) { Transactions.new }

  context 'upon creation:' do
    it 'should initialise with an empty history' do
      expect(transaction.history).to eq([])
    end
  end

  context 'creating a transaction' do
    it 'can create the date in dd/mm/yy format' do
      expect(transaction.date_of_transaction).to eq(Time.now.strftime("%d/%m/%Y"))
    end

    it 'can build a credit transaction' do
      transaction.credit(500, 500)
      expect(transaction.history).to eq([{date: Time.now.strftime("%d/%m/%Y"), credit: 500, balance: 500}])
    end

  end

end