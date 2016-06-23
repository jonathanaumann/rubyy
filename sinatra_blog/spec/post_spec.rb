
require "rspec"
require "rack/test"
require_relative("../models/post.rb")

RSpec.describe Post do
	before(:each)do
	
		@post2= Post.new("third", Time.new(2016, 3, 15), "This is my third and last post counted")
		@post1= Post.new("First Post", Time.new(2016,1 ,1), "this is my first post im pretty confident it will post")
		@post3= Post.new("wassup", Time.new(2016, 3, 16), "This is 5th and last post for awhile")
		
	end

	it ("#text returns the post's text") do
		expect(@post2.text).to eq("This is my third and last post counted")
	end
end
