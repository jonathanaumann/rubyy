require "sinatra"

get'/' do 
	"Whats up Doc, this is home"
end

get '/real_page' do 
	"This second page is real af"
end

get '/hi' do 
	redirect to('/real_page')
end

