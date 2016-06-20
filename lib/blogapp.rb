require_relative("blog.rb")
require_relative("post.rb")

blog = Blog.new(nil)
blog.add_post Post.new("First Post", Time.new(2016,1 ,1), "this is my first post im pretty confident it will post")
blog.add_post SponsoredPosts.new("Second Post", Time.new(2016, 1, 24), "this is my second post its dope")
blog.add_post Post.new("third", Time.new(2016, 3, 15), "This is my third and last post counted")
blog.add_post Post.new("wassup", Time.new(2016, 3, 16), "This is 5th and last post for awhile")
blog.add_post Post.new("hello ppl", Time.new(2016, 4, 15), "This is me")
blog.add_post Post.new("hiya", Time.new(2016, 4, 20), "This is my while")
blog.add_post Post.new("whatsssgood", Time.new(2016, 4, 25), "This is my post")
blog.add_post Post.new("chillen", Time.new(2016, 4, 30), "Last post ")
blog.add_post Post.new("summer", Time.new(2016, 5, 15), "awhile now")
blog.add_post Post.new("live", Time.new(2016, 5, 16), "Im done")
blog.front_page_sorted
blog.publish_front_page


