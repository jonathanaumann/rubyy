require_relative("../lib/taskclass.rb")
require_relative("../lib/todoclass.rb")

RSpec.describe Task do
	describe "complete?" do 
	it "tells us if completed" do
		task1= Task.new("clean")
		expect(task1.complete?).to eq(false)
	end
	end
	describe "complete!" do
    it "sets @is_complete to true" do
      task = Task.new("Wash Pants")

      task.complete!

      expect( task.complete! ).to eq(true)
    end
  end

  describe "make_incomplete!" do
    it "sets @is_complete to false" do
      task = Task.new("Wash Pants")

      
      task.make_incomplete!

      expect( task.complete? ).to eq(false)
    end
  end
  describe "update_task!" do
    it "changes the text of a task" do
      task = Task.new("Wosh Ponts")

      task.update_task!("Wash Pants")

      expect( task.content ).to eq("Wash Pants")
    end
  end
end

RSpec.describe TodoList do
  let(:task1) { Task.new("Activate SunPass") }
  let(:task2) { Task.new("Vacuum 2nd floor") }
  let(:task3) { Task.new("Go to the gym") }
  let(:empty_list) { TodoList.new }
  let(:list) do
    list = TodoList.new

    list.add_task(task1)
    list.add_task(task2)
    list.add_task(task3)

    # Don't forget to return the value!
    list
  end

  describe "#add_task" do
    it "adds tasks to the list" do
      expect( empty_list.tasks.length ).to eq(0)

      empty_list.add_task(task1)

      expect( empty_list.tasks.length ).to eq(1)
      expect( empty_list.tasks ).to include(task1)
    end
  end

  describe "#delete_task" do
    it "deletes task with given id" do

      list.delete_task(task2.id)

      expect( list.tasks ).not_to include(task2)
    end
  end

  describe "#find_task_by_id" do
    it "returns the task for the correct id" do
      expect( list.find_task_by_id(task1.id) ).to eq(task1)
    end

    it "returns nil for incorrect id" do
      expect( list.find_task_by_id(9999) ).to be_nil
    end
  end
end


