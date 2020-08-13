require_relative 'bank_account.rb'

class BankStatement

  def print(transaction_history)
    puts 'date || credit || debit || balance'
    transaction_history.reverse.each do |transaction|
      transaction_history.to_s.split
      puts transaction
    end
  end
end