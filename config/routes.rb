Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users, controllers: { registration: "registrations" }

resources :books do
  resources :reviews
end
resources :messages do
  resources :comments
end
resources :users, :only => [:show]

resources :subscribers

 get "messages" => "messages#show"

 get "search" => "pages#search"

get "payment" => "pages#payment"

get "charge" => "pages#charge"

end
