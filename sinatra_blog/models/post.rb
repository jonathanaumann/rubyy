require_relative("blog.rb")

class Post
	attr_accessor :title, :date, :catagory, :author, :text 
	def initialize(title, date, catagory, author, text)
		@title = title
		@date = date
		@catagory = catagory
		@author = author
		@text = text 
	end

	def title
		return @title
	end

	def date
		return @date
	end

	def text
		return @text
	end 
	def author
		return @author
	end
	def catagory
		return @catagory
	end
	# def print
	# 		puts @title
	# 		puts "*******************"
	# 		puts @text
	# 		puts "-------------------"
		
	# end

end