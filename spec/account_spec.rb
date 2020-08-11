require 'account.rb'

describe Account do
  describe '#initialize' do
    it 'initializes with a balance of zero' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'updates balance when money is deposited into account' do
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end
  end
end
