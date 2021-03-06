# frozen_string_literal: true

# This class formats the transactions into something printable
class StatementPrinter
  
  def format(transactions_history)
    puts 'date || credit || debit || balance'
    "#{extractor(transactions_history)}"
  end

  private

  def extractor(array)
    array.reverse.each do |item|
      puts "#{item[:date]} || #{item[:credit]} || #{item[:debit]} || #{item[:balance]}"
    end
  end
end
