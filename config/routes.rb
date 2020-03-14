Rails.application.routes.draw do
  root 'cat_friends#index'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :subjects do 
	  member do
	      get 'delete'
	  end
  end

  resources :pages do
	  member do
	      get 'delete'
	  end
  end

  resources :sections do
	  member do
	      get 'delete'
	  end
  end 
end
