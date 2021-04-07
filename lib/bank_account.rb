require_relative 'transactions'
require_relative 'statements'

class BankAccount
  attr_reader :balance, :transactions, :statements

  def initialize(balance = 0,
                 transactions = Transactions.new,
                 statements = Statements.new)
    @balance = balance
    @transactions = transactions
    @statements = statements
  end

  def deposit(amount)
    fail "You must deposit a positive amount" if amount <= 0
    @balance += amount
    @transactions.credit(amount, @balance)
  end

  def withdraw(amount)
    fail "You must withdraw a positive amount" if amount <= 0
    @balance -= amount
    @transactions.debit(amount, @balance)
  end

  def print_statement
    @statements.format(@transactions.history)
  end
end
