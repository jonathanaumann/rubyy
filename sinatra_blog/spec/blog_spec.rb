
require_relative "../models/blog.rb"
require "rspec"
require "rack/test"



RSpec.describe Blog do
	before(:each)do 
		@blog = Blog.new
		@post2= Post.new("third", Time.new(2016, 3, 15), "about me", "jonathan Aumann", "This is my third and last post counted")
		@post1= Post.new("First Post", Time.new(2016,1 ,1), "about me", "jonathan Aumann", "this is my first post im pretty confident it will post")
		@post3= Post.new("wassup", Time.new(2016, 3, 16), "about me", "jonathan Aumann", "This is 5th and last post for awhile")
		@blog.add_post @post2
		@blog.add_post @post1
		@blog.add_post @post3
	end
	it("#posts returns list of posts") do 
		expect(@blog.posts.length).to eq(3)
	end 
	it("#latest_posts returns dated list") do 

	expect(@blog.latest_posts[0]).to eq(@post3)
end

end