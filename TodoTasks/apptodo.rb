require_relative("lib/taskclass.rb")

task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id



jons_todos = [ task, task2
]

get "/todos" do 
	@todos = jons_todos
	@hours_needed = @todos.reduce(0) do |sum, todo|
		sum + todo,time