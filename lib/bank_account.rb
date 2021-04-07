# frozen_string_literal: true

require_relative 'transactions'
require_relative 'statements'
# This class handles the bank balance and calls methods upon other classes.
class BankAccount
  attr_reader :balance, :transactions, :statements

  def initialize(balance = 0.00,
                 transactions = Transactions.new,
                 statements = Statements.new)
    @balance = balance
    @transactions = transactions
    @statements = statements
  end

  def deposit(amount)
    raise 'You must deposit a positive amount' if amount <= 0.00

    @balance += amount
    @transactions.credit(amount, @balance)
  end

  def withdraw(amount)
    raise 'You must withdraw a positive amount' if amount <= 0.00
    @balance -= amount
    @transactions.debit(amount, @balance)
  end

  def print_statement
    @statements.format(@transactions.history)
  end
end
