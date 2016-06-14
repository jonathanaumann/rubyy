class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")
ironhack = ProgrammingLanguage.new("Ironhack",2222,"whatever")
  
array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

#array_printer(array_of_languages)

aged_languages = array_of_languages.map do
	|element|
	element.age = element.age + 1 
  element
end
#Your code goes here
aged_languages = aged_languages.sort_by!{|element| element.age* -1 }




aged_languages.delete_if{|element| element.name== "Java"}
shuffled_languages = aged_languages.shuffle


rotated_languages = array_of_languages.rotate

pushed_languages = array_of_languages.push(ironhack)

sampled_languages = array_of_languages.sample(3)
#puts sampled_languages

puts "The programming languages sampled are: "
#array_printer(array_of_languages)
array_printer(sampled_languages)