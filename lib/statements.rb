class Statements
  def format(transactions_history)
    puts 'date || credit || debit || balance'
    "#{extractor(transactions_history)}"
  end

  private
  def extractor(array)
    reversed_array = array.reverse
    reversed_array.each do |item|
      puts "#{item[:date]} || #{item[:credit]} || #{item[:debit]} || #{item[:balance]}"
    end
  end
end
