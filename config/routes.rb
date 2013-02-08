SampleApp::Application.routes.draw do
	resources :users
	resources :sessions, only: [:new, :create, :destroy]
	root to: 'static_pages#home'

	match '/signup' , to: 'Users#new'
	match '/show' , to: 'Users#show'
	match '/help' , to: 'static_pages#help'
	match '/about' , to: 'static_pages#about'
	match '/contact' , to: 'static_pages#contact'
	match '/signin', to: 'sessions#new'
    match '/sessions', to: 'sessions#create'
	match '/signout', to: 'sessions#destroy', via: :delete
end
