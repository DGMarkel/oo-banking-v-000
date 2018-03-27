class Transfer
attr_accessor :amount, :status
attr_reader :sender, :receiver

  def initialize(sender, receiver, amount = 50)
    @sender = sender
    @receiver = receiver
    @amount = transfer_amount
    @status = "pending"
  end

end
