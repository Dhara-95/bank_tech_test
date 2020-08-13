require 'bank_statement.rb'
require 'bank_account.rb'

describe BankStatement do

  describe '#print' do
    it { is_expected.to respond_to(:print).with(1).argument }

    it 'prints the formatted account_history' do
      bankaccount = BankAccount.new
      bankaccount.deposit(1000)
      expect(subject.print(["#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || 1000.00"])).to eq(["#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || 1000.00"])
    end

    it 'prints the formatted account_history with most recent transaction first' do
      bankaccount = BankAccount.new
      bankaccount.deposit(1000)
      bankaccount.withdraw(500)
      expect(subject.print(["#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || 1000.00", 
        "#{Time.now.strftime('%d/%m/%Y')} || 500.00 || 500.00"])).to eq(["#{Time.now.strftime('%d/%m/%Y')} || 500.00 || 500.00", 
        "#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || 1000.00"])
    end
  end
end
