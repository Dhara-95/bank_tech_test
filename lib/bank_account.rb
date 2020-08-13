require_relative 'bank_statement.rb'

class BankAccount
  attr_reader :balance, :account_history

  def initialize
    @balance = 0
    @account_history = []
    @bank_statement = BankStatement.new
  end

  def deposit(amount)
    @balance += amount
    @account_history.push("#{Time.now.strftime('%d/%m/%Y')} || #{('%.2f' % amount)} || #{('%.2f' % @balance)}")
  end

  def withdraw(amount)
    raise 'Withdrawal amount exceeds current balance' if amount > balance

    @balance -= amount
    @account_history.push("#{Time.now.strftime('%d/%m/%Y')} || #{('%.2f' % amount)} || #{('%.2f' % @balance)}")
  end

  def print_statement
    @bank_statement.print(account_history)
  end
end
