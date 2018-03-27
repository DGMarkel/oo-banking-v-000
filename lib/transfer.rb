class Transfer
attr_accessor :transfer_amount, :status
attr_reader :sender, :receiver

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
    @status = pending
  end

end
