Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/contacts", to: "contacts#index"

  get "/contacts/new", to: "contacts#new"

  post "/contacts" => "contacts#create"



end
