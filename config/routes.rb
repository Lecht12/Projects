Rails.application.routes.draw do
  resources :books
  get 'infos'=>'users#lodin'
  get '/dash' =>'infos#index'
  get '/dash2' =>'users#login'
  get '/dashboard' =>'shoes#index'
  get '/admin' =>'shoes#admin'
  get '/'=>'users#login'
  post'/users'=>'users#create'
  post'/infos'=>'infos#create'
  post'/sessions'=>'sessions#create'
  match ':controller(/:action)',:via => :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
