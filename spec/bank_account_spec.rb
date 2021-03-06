require 'bank_account.rb'

describe BankAccount do
  describe '#initialize' do
    it 'initializes with a balance of zero' do
      expect(subject.balance).to eq(0)
    end

    it 'initializes with an empty transaction_history' do
      expect(subject.transaction_history).to eq([])
    end
  end

  describe '#deposit' do
    it { is_expected.to respond_to(:deposit).with(1).argument }

    it 'updates balance when money is deposited into account' do
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end

    it 'adds date, credit/debit and balance to an array when money is deposited' do
      subject.deposit(1000)
      expect(subject.transaction_history).to eq(["#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00"])
    end
  end

  describe '#withdraw' do
    it { is_expected.to respond_to(:deposit).with(1).argument }

    it 'updates balance when money is withdrawn from account' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.balance).to eq(500)
    end

    it 'raises an error if withdrawal amount exceeds balance' do
      subject.deposit(500)
      expect { subject.withdraw(600) }.to raise_error 'Withdrawal amount exceeds current balance'
    end

    it 'adds date, credit/debit and balance to an array when money is withdrawn' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.transaction_history).to eq(["#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00",
        "#{Time.now.strftime('%d/%m/%Y')} || || 500.00 || 500.00"])
    end
  end

  describe '#print_statement' do
    it 'prints the formatted bank_statement' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.print_statement).to eq(["#{Time.now.strftime('%d/%m/%Y')} || || 500.00 || 500.00", 
        "#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00"])
    end
  end
end
