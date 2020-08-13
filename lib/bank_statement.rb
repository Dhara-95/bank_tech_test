require_relative 'bank_account.rb'

class BankStatement

  def print(account_history)
    puts 'date || credit || debit || balance'
    account_history.reverse.each do |transaction|
      account_history.to_s.split
      puts transaction
    end
  end
end