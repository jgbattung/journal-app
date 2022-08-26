Rails.application.routes.draw do
  # get 'home/index'
  devise_for :users
  root 'home#index'
  get '/today' => 'tasks#today', as: 'today'
  resources :categories do
    resources :tasks
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
