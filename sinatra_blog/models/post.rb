require_relative("blog.rb")

class Post
	attr_accessor :title, :date, :text 
	def initialize(title, date, text)
		@title = title
		@date =date
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
	# def print
	# 		puts @title
	# 		puts "*******************"
	# 		puts @text
	# 		puts "-------------------"
		
	# end

end

class SponsoredPosts < Post
	# def print
	# 		puts "**********Post @title **********"
	# 		puts "*******************"
	# 		puts @text
	# 		puts "-------------------"
		 
	# end
end