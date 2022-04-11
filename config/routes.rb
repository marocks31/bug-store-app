Rails.application.routes.draw do

  get "/bugs" => "bugs#index"
  post "/bugs" => "bugs#create"
  get "/bugs/:id" => "bugs#show"
  patch "/bugs/:id" => "bugs#update"
  delete "/bugs/:id" => "bugs#destroy"
  
end
