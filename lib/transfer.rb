class Transfer
attr_accessor :amount, :status
attr_reader :sender, :receiver

  def initialize(sender, receiver, amount = 50)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @status == "pending"
      if valid?
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
      elsif @sender.balance < @amount
        "Transaction rejected. Please check your account balance."
      end
    end
  end

end
