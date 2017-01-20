Rails.application.routes.draw do

  get 'users' => 'users#show'

  get 'users/destroy'

  get 'signup' => 'users#new'

  root 'static_pages#home'

  get 'contact' => 'static_pages#contact'

  get 'help' => 'static_pages#help'

end
