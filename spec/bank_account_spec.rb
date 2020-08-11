require 'bank_account.rb'

describe BankAccount do
  describe '#initialize' do
    it 'initializes with a balance of zero' do
      expect(subject.balance).to eq(0)
    end

    it 'initializes with an empty account history' do
      expect(subject.account_history).to eq([])
    end
  end

  describe '#deposit' do
    it { is_expected.to respond_to(:deposit).with(1).argument }

    it 'updates balance when money is deposited into account' do
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end

    it 'adds date, credit, deposit, balance to an array when money is deposited' do
      subject.deposit(1000)
      expect(subject.account_history).to eq(["#{Time.now.strftime('%d/%m/%Y')} || 0 || 1000 || 1000"])
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

    it 'adds date, credit, deposit, balance to an array when money is withdrawn' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.account_history).to eq(["#{Time.now.strftime('%d/%m/%Y')} || 0 || 1000 || 1000",
        "#{Time.now.strftime('%d/%m/%Y')} || 500 || 0 || 500"])
    end
  end

  describe '#print_statement' do
    it 'prints the formatted account_history' do
      subject.deposit(1000)
      expect(subject.print_statement).to eq(["#{Time.now.strftime('%d/%m/%Y')} || 0 || 1000 || 1000"])
    end

    it 'prints the formatted account_history with most recent transaction first' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.print_statement).to eq(["#{Time.now.strftime('%d/%m/%Y')} || 500 || 0 || 500", 
        "#{Time.now.strftime('%d/%m/%Y')} || 0 || 1000 || 1000"])
    end
  end
end
