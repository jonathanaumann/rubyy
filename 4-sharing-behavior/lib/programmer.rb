# lib/programmer.rb
require_relative("caffeine_consumer.rb")
require_relative("payable.rb")
class Programmer 
	include Payable
	include CaffeineConsumer
  def program
    consume_caffeine
    do_wonderful_things_with_computers
  end

  def do_wonderful_things_with_computers
    puts "Coding wonderful things!"
  end
end
