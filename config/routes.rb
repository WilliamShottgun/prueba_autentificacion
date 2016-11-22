Rails.application.routes.draw do
  

  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :songs
  resources :playlists, only: [:index] # Solo necesitamos mostrar el index de catcheds por a

  root 'songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
