class Account
  attr_reader :balance, :account_history

  def initialize
    @balance = 0
    @account_history = []
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'Withdrawal amount exceeds current balance' if amount > balance

    @balance -= amount
  end
end
