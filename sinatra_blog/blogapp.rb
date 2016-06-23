

require "sinatra"
require "sinatra/reloader"


require_relative("models/post.rb")
require_relative("models/blog.rb")

blog = Blog.new
blog.add_post Post.new("First Post", Time.new(2016,1 ,1), "this is my first post im pretty confident it will post")
blog.add_post Post.new("third", Time.new(2016, 3, 15), "This is my third and last post counted")
blog.add_post Post.new("wassup", Time.new(2016, 3, 16), "This is 5th and last post for awhile")
# blog.add_post Post.new("hello ppl", Time.new(2016, 4, 15), "This is me")
# blog.add_post Post.new("hiya", Time.new(2016, 4, 20), "This is my while")
# blog.add_post Post.new("whatsssgood", Time.new(2016, 4, 25), "This is my post")
# blog.add_post Post.new("chillen", Time.new(2016, 4, 30), "Last post ")
# blog.add_post Post.new("summer", Time.new(2016, 5, 15), "awhile now")
# blog.add_post Post.new("live", Time.new(2016, 5, 16), "Im done")
# blog.add_post Post.new("Eleventh", Time.now, "Eleventh text")
# blog.add_post Post.new("Twelth", Time.now, "Twelth text")
# blog.add_post Post.new("Thirtheenth", Time.now, "Thirtheenth text")
# blog.add_post Post.new("Fourteenth", Time.now, "Fourteenth text")

#  blog.posts

# blog.publish_front_page

# input = nil

# while input != "exit"
#   puts "\nType [next] to see the next page or [prev] to see the previous page."
#   input = gets.chomp

#   if input == "next"
#     blog.go_next
#   elsif input == "prev"
#     blog.go_prev
#   end

#   blog.print_current_page
# end

get "/" do 
	@posts = blog.latest_posts

	erb(:home)
	end
get '/post_details/:index' do
  @posts = blog.latest_posts
  @index = (params[:index].to_i)
 erb(:post_details)
end

get "/new_post" do
  erb :new_post
end

post "/create_post" do
	
  new_post = Post.new( params[:title], Time.now, params[:text] )

  blog.add_post( new_post )

  redirect to("/")
end






