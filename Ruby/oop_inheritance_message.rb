# define class
class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end

# define inherited class
class Email < Message
  def initialize(from, to)
    super # calls on Message class
  end
end

my_message = Message.new("Navie", "Mom")



