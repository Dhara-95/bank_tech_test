require_relative 'bank_statement.rb'

class BankAccount
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
    @bank_statement = BankStatement.new
  end

  def deposit(amount)
    @balance += amount
    @transaction_history.push("#{date} || #{('%.2f' % amount)} || #{('%.2f' % @balance)}")
  end

  def withdraw(amount)
    raise 'Withdrawal amount exceeds current balance' if amount > balance

    @balance -= amount
    @transaction_history.push("#{date} || #{('%.2f' % amount)} || #{('%.2f' % @balance)}")
  end

  def print_statement
    @bank_statement.print(transaction_history)
  end
  
  private

  def date
    Time.now.strftime('%d/%m/%Y')
  end
end
