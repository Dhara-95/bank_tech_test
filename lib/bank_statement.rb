require_relative 'bank_account.rb'

class BankStatement

  def print(trasaction_history)
    puts 'date || credit || debit || balance'
    trasaction_history.reverse.each do |transaction|
      trasaction_history.to_s.split
      puts transaction
    end
  end
end