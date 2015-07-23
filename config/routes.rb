Rails.application.routes.draw do
  get "/user/:id" => "application#show"
end
