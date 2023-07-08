Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  resources :hero_powers, only: [:create]
end
