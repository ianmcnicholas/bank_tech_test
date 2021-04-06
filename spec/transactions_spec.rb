require 'transactions'

describe Transactions do

  let(:transactions) { Transactions.new }

  context 'upon creation:' do

    it 'should initialise with an empty history' do
      expect(transactions.history).to eq([])
    end

  end


end
