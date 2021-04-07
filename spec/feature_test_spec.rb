require 'bank_account'

describe 'user interaction' do

  it 'the program should meet the specifications when run by the user' do
    now = Time.parse("2012-01-10")
    allow(Time).to receive(:now) { now }
    account = BankAccount.new
    account.deposit(1000)
    now = Time.parse("2012-01-13")
    account.deposit(2000)
    now = Time.parse("2012-01-14")
    account.withdraw(500)
    expect { account.print_statement }.to output("date || credit || debit || balance\n14/01/2012 ||  || 500.00 || 2500.00\n13/01/2012 || 2000.00 ||  || 3000.00\n10/01/2012 || 1000.00 ||  || 1000.00\n").to_stdout
  end

end
