require 'pry'

class Transfer
attr_accessor :amount, :status, :completed_transaction_info
attr_reader :sender, :receiver

  def initialize(sender, receiver, amount = 50)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @completed_transaction_info = nil
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @status == "pending"
      if @sender.balance < @amount
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      elsif valid?
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
        @completed_transaction_info = [@sender, @receiver, @amount]
        binding.pry
      end
    end
  end

  def reverse_transfer
end
