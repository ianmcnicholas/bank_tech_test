require 'statements'

describe Statements do
  let(:transactions) { double(:transactions) }
  let(:statements) { Statements.new }

  it 'should have a method to format transactions' do
    expect(statements).to respond_to(:format).with(1).argument
  end

  it 'should format transactions to the correct output' do
    transactions_history = [{ date: '07/04/2021', credit: 500, balance: 500 }]
    expect { statements.format(transactions_history) }.to output("date || credit || debit || balance\n07/04/2021 || 500 ||  || 500\n").to_stdout
  end

  it 'should return transactions in reverse chronological order' do
    transactions_history = [{ date: '06/04/2021', credit: 500, balance: 500 },
                            { date: '07/04/2021', debit: 200, balance: 300 }]
    expect { statements.format(transactions_history) }.to output("date || credit || debit || balance\n07/04/2021 ||  || 200 || 300\n06/04/2021 || 500 ||  || 500\n").to_stdout
  end
end
