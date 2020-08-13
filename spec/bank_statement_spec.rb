require 'bank_statement.rb'

describe BankStatement do
  it 'responds to balance' do
    expect(subject).to respond_to(:balance)
  end
end