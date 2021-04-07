require_relative 'transactions'
require_relative 'statements'

class BankAccount
  attr_reader :balance, :transactions, :statements

  def initialize(balance = 0, transactions = Transactions.new, statements = Statements.ew)
    @balance = balance
    @transactions = transactions
    @statements = statements
  end

  def deposit(amount)
    @balance += amount
    @transactions.credit(amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions.debit(amount, @balance)
  end
end

#
# TO DO:
#   * test that the BankAccount class can update transactions
#     with deposit and withdrawal
#   * printer class to formatt Transactions
#   * BankAccount prints transactions
