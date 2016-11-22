Rails.application.routes.draw do
  

  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :songs
  resources :playlists, only: [:index, :new, :create] do 
  member do
  	get :canciones
  	end
  end

  root 'songs#index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
