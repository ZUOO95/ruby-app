Rails.application.routes.draw do
  resources :teams
  resources :graczs

  root 'home#index'
  get 'home/about'
  get "/about" => "home#about"
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
