class Transactions

  # time = Time.new
  # time.strftime("%d/%m/%Y")        # "05/12/2015"

  attr_reader :history

  def initialize
    @history = []
  end

  def credit(amount, balance)
    new_record = {date: date_of_transaction, credit: amount, balance: balance}
    @history.push(new_record)
  end

  def date_of_transaction
    Time.now.strftime("%d/%m/%Y")
  end

end
