Rails.application.routes.draw do
  get "/user/:id" => "application#show"
  get "/new_user" => "application#new"
  get "/create_user" => "application#create"
  get "/user/:id/edit" => "application#edit"
  get "/edit_user/:id" => "application#edit_user"
  get "user/:id/destroy" => "application#destroy"
  get "/users/all" => "application#index"
  get "/error" => "application#error"
  get "/user/:id/replace" => "application#replace"
end
