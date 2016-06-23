require "sinatra"
require_relative "lib/calcclass.rb"
require_relative "lib/classMemorySaver.rb"
my_calculator = Calculator.new
my_memory = MemorySaver.new


get "/" do
@memory_number = my_memory.load
erb :home
end

  erb(:add)
end

post "/calculate" do
  first = params[:first_number].to_i
  second = params[:second_number].to_i

  if params[:operation] == "add"
  	@result = my_calculator.add(first, second)
  elsif params[:operation] == "subtract"
  	@result = my_calculator.subtract(first, second)
  elsif params[:operation] == "multiply"
  	@result = my_calculator.multiply(first, second)
  elsif params[:operation] == "divide"
  	@result = my_calculator.divide(first, second)
  end
  erb:results
  		
  result = first + second
  "#{first} + #{second} = #{result}"
end

