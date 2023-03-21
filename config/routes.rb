Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #added to config devise gem
  #devise_scope :user do
  #  root to: "devise/sessions#new"
  #end
  root 'static_pages#home'
end
