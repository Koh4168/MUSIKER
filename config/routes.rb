Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
     root to: "top#index"
     get "events"           => "events#index"
     get "events/new"       => "events#new"
     post "events"          => "events#create"
     delete "events/:id"    => "events#destroy"
     get "events/:id/edit"  => "events#edit"
     get  "users/:id"       => "users#show"
     
end
