# lib/designer.rb
require_relative("caffeine_consumer.rb")
require_relative("payable.rb")
require_relative("programmer.rb")
class Designer 
  include Payable
  include CaffeineConsumer
  def design_things
    consume_caffeine
    select_typography
    select_colors
  end

  def select_typography
    puts "Selecting Comic Sans"
  end

  def select_colors
    puts "Selecting black and white as the colors"
  end
end
