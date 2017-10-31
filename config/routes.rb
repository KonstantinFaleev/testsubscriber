Rails.application.routes.draw do

  resources :posts

  get 'registration' => 'users#new', as: 'registration'

  post 'users' => 'users#create'

  get 'pages/index'

  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
