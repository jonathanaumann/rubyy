Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/', to: 'site#home'

get "/projects", to: "projects#index" 


get "/project/new", to: "projects#new"
get "/project/:id", to: "projects#show"


post "/projects" => "projects#create"



get "/projects/:project_id/time_entries", to: 'time_entries#show'

get "/projects/:project_id/time_entries/new", to: "time_entries#new"

post "/projects/:project_id/time_entries", to: "time_entries#create", as: :project_time_entries

get "/projects/:project_id/time_entries/:id/edit", to: "time_entries#edit"

patch '/projects/:project_id/time_entries/:id', to: "time_entries#update", as: :project_time_entry
end
