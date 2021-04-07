# frozen_string_literal: true

require 'statement_printer'

describe StatementPrinter do
  let(:statement) { StatementPrinter.new }

  it 'should format transactions to the correct output' do
    transaction_history = [{ date: '07/04/2021', credit: '%.2f' % 500, balance: '%.2f' % 500 }]
    expect { statement.format(transaction_history) }.to output("date || credit || debit || balance\n07/04/2021 || 500.00 ||  || 500.00\n").to_stdout
  end

  it 'should return transactions in reverse chronological order' do
    transaction_history = [{ date: '06/04/2021', credit: '%.2f' % 500, balance: '%.2f' % 500 },
                            { date: '07/04/2021', debit: '%.2f' % 200, balance: '%.2f' % 300 }]
    expect { statement.format(transaction_history) }.to output("date || credit || debit || balance\n07/04/2021 ||  || 200.00 || 300.00\n06/04/2021 || 500.00 ||  || 500.00\n").to_stdout
  end
end
