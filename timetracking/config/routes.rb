Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/', to: 'site#home'

get "/projects", to: "projects#index" 


get "/project/new", to: "projects#new"
get "/project/:id", to: "projects#show"


post "/projects" => "projects#create"
end
