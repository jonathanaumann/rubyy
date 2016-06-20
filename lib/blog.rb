
require_relative("post.rb")


class Blog
	def initialize(posts)
		@posts = []
		@page_start =0
		@page_end = 2
	end

	def add_post(post)
		@posts.push(post)
	end

	def front_page_sorted
		@posts =@posts.sort_by{|post| post.date }
	end
	

	def publish_front_page
		post= @posts[@page_start..@page_end]
		post.each do |pt|
			pt.print
		end
		input = nil
		while input != "exit"
			puts "next?"
			input = gets.chomp
			if input == "next"

		post = @posts[@page_start+=3..@page_end+=3] 
			post.each do |pt| pt.print
			end
		elsif input == "prev"
				post = @posts[@page_start-=3..@page_end-=3]
				post.each do |pt| pt.print
				end
			end
		end
	end
	
	
end

