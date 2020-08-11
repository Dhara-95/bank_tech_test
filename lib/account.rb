class Account
  attr_reader :balance, :account_history

  def initialize
    @balance = 0
    @account_history = []
  end

  def deposit(amount)
    @balance += amount
    @account_history.push("date: #{Time.now.strftime('%d/%m/%Y')}, credit: 0, debit: #{amount}, balance: #{@balance}")
  end

  def withdraw(amount)
    raise 'Withdrawal amount exceeds current balance' if amount > balance

    @balance -= amount
    @account_history.push("date: #{Time.now.strftime('%d/%m/%Y')}, credit: #{amount}, debit: 0, balance: #{@balance}")
  end
end
