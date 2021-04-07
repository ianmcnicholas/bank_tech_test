require 'bank_account'

describe 'user interaction' do
  let(:time) { double(:time) }

it 'the program should meet the specifications when run by the user' do
  allow(time).to receive(:date_of_transaction).and_return("07/04/2021")
  account = BankAccount.new
  account.deposit(1000)
  account.deposit(2000)
  account.withdraw(500)
  expect { account.print_statement }.to output("date || credit || debit || balance\n07/04/2021 ||  || 500.00 || 2500.00\n07/04/2021 || 2000.00 ||  || 3000.00\n07/04/2021 || 1000.00 ||  || 1000.00\n").to_stdout
end

end
