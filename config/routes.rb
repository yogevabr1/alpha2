Rails.application.routes.draw do

	root "pages#home"
	get "about", to: "pages#about"
	get "signup", to: "users#new"

	post "users", to: "users#create"
 	resources :users, except: [:new]

	resources :articles # new article path for everything
	resources :categories, except: [:destroy]

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
