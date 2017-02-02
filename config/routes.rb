Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  root   'static_pages#home'
  get    'admin'   => 'admin#index'

  controller :sessions do
    get    'login'   => :new
    post   'login'   => :create
    delete 'logout'  => :destroy
  end

  controller :users do
    get    'index'   => :index
    get    'signup'  => :new
    post   'signup'  => :create
  end

  controller :static_pages do
    get    'contact' => :contact
    get    'help'    => :help
  end

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]

end
