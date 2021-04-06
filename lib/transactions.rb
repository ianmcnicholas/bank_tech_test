class Transactions

  # time = Time.new
  # time.strftime("%d/%m/%Y")        # "05/12/2015"

  attr_reader :history

  def initialize
    @history = []
  end

  def date_of_transaction
    Time.now.strftime("%d/%m/%Y")
  end

end
