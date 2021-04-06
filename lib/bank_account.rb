# require_relative 'transactions'

class BankAccount

  attr_reader :balance, :transactions

  def initialize(balance = 0, transactions = Transactions.new)
    @balance = balance
    @transactions = transactions
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
