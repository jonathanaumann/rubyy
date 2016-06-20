require_relative("blog.rb")

class Post
	attr_accessor :title, :date, :text, :print
	def initialize(title, date, text)
		@title = title
		@date =date
		@text = text 
	end
	def print
			puts "#{@title}"
			puts "*******************"
			puts "#{@text}"
			puts "-------------------"
		
	end

end

class SponsoredPosts < Post
	def print
			puts "**********Post #{@title}**********"
			puts "*******************"
			puts "#{@text}"
			puts "-------------------"
		 
	end
end