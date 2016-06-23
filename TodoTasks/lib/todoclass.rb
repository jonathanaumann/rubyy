class TodoList
    attr_reader :tasks

    def initialize
        @tasks = []
    end

    def add_task(new_task)
    	@tasks.push(new_task)
    end

    def delete_task(task_id)
    	@tasks.delete_if do |task| 
    	task.id == task_id 
  
    		end

    end

    def find_task(task_id)
    	@tasks.find {|task| task.id == task_id }
    end
end