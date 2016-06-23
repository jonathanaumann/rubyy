require "sinatra"
require "sinatra/reloader"
require "pry"

enable(:sessions)

get "/" do 
	"My first Sinatra APP, hello world"
	erb(:home)
end

get "/sessions_test" do
	@current_session = session
	erb(:display)
end

get "/session_add/:value" do 
	new_value = params[:value]
	session[:new_session_value] = new_value
	redirect to("/sessions_test")
end 





get "/hi" do
	@name = "jon"
	erb(:hi)
end 

get "/about" do
	erb(:about)
	end

get "/party" do
	status(200)
	erb(:party)	
end

get "/recipes" do
	@name = "Red Velvet Cake"
	@ingredients = ["eggs", "flour", "red", "cocoa", "buttermilk", "sugar", "creamcheese"]
	erb(:recipes)
end
users = {
	"jon" => {:name => "jonathan", :email => "j@hot.com"}, 
	"ag" => { :name => "Alida Gagliuffi", :email => "agagagag@agagag.com" },
  "alia" => { :name => "Alia Poonawala", :email => "aaaa@aaaaa.com" }
}

get "/users/:username" do
@name= params[:username]

if @name == "jon8998" || @name == "Jon"
	erb(:time)
else
	@info = users[@name]
	binding.pry
	erb(:user_profile)
end
end