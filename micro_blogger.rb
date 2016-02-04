require 'jumpstart_auth'

class MicroBlogger
  attr_reader :client

  def initialize
    puts "Initializing MicroBlogger"
    @client = JumpstartAuth.twitter
  end

  def tweet(message)
    @client.update(message)
  end

  def run
    put "welcome to the JSL Twitter Client!"
  end
end

blogger = MicroBlogger.new
blogger.run