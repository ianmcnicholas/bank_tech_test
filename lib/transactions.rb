# frozen_string_literal: true

# This class creates a history of transactions
class Transactions
  attr_reader :history

  def initialize
    @history = []
  end

  def credit(amount, balance)
    new_record = { date: date_of_transaction, credit: amount, balance: balance }
    @history.push(new_record)
  end

  def debit(amount, balance)
    new_record = { date: date_of_transaction, debit: amount, balance: balance }
    @history.push(new_record)
  end

  private

  def date_of_transaction
    Time.now.strftime('%d/%m/%Y')
  end
end
