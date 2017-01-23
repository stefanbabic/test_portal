Rails.application.routes.draw do

  root 'static_pages#home'
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  get 'contact' => 'static_pages#contact'
  get 'help' => 'static_pages#help'
  resources :users

end
