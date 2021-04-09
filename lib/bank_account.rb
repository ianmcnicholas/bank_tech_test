# frozen_string_literal: true

require_relative 'transaction_history'
require_relative 'statement_printer'
# This class handles the bank balance and calls methods upon other classes.
class BankAccount
  attr_reader :balance

  def initialize(balance = 0,
                 transactions = TransactionHistory.new,
                 statements = StatementPrinter.new)
    @balance = balance
    @transactions = transactions
    @statements = statements
  end

  def deposit(amount)
    raise 'You must deposit a positive number' unless amount.to_i > 0
    @balance += amount
    transactions.credit(amount, @balance)
  end

  def withdraw(amount)
    raise 'You must withdraw a positive number' unless amount.to_i > 0
    @balance -= amount
    transactions.debit(amount, @balance)
  end

  def print_statement
    statements.format(transactions.history)
  end

  private

  attr_reader :transactions, :statements

end
