Rails.application.routes.draw do



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'site#home'


 get '/text_inspections/new' => 'text_inspections#new', as: "new"

  post "/text_inspections", to: "text_inspections#create"

 get '/text_inspections/results' => 'text_inspections#results', as: "results"



 get '/asciis/new' => "asciis#new"


 post "/asciis" => "asciis#create"



 get "/gen/new" => "gen#new"


 post "/gen" => "gen#create"
end


# site            -> SiteController
# testinspections -> TestinspectionsController
# text_inspections -> TextInspectionsController