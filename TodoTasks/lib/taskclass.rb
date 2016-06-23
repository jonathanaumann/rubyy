class Task
    attr_reader :content, :id, :status
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @status = false
    end
    def make_incomplete!
      @is_complete = false
    end

    def complete!
        @status = true
    end
    def complete?
    	if @status == true
         true
        else 
            false
        end
    end
    def update_task!(new)
        @content = new 
    end 

end
