class BankAccount
  attr_reader :balance, :account_history

  def initialize
    @balance = 0
    @account_history = []
  end

  def deposit(amount)
    @balance += amount
    @account_history.push("#{Time.now.strftime('%d/%m/%Y')} || 0 || #{amount} || #{@balance}")
  end

  def withdraw(amount)
    raise 'Withdrawal amount exceeds current balance' if amount > balance

    @balance -= amount
    @account_history.push("#{Time.now.strftime('%d/%m/%Y')} || #{amount} || 0 || #{@balance}")
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @account_history.reverse.each do |transaction|
      @account_history.to_s.split
      puts transaction
    end
  end
end
