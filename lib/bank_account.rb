require_relative 'transactions'

class BankAccount
  attr_accessor :balance, :transactions

  def initialize(balance = 0, transactions = Transactions.new)
    @balance = balance
    @transactions = transactions
  end

  def deposit(amount)
    @balance += amount
    @transactions.credit(amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
  end
end

#
# TO DO:
#   * test that the BankAccount class can update transactions
#     with deposit and withdrawal
#   * printer class to formatt Transactions
#   * BankAccount prints transactions
