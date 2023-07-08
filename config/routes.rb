Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/heroes', to: 'heroes#index'
  get '/heroes/:id', to: 'heroes#show'
  get '/powers', to: 'powers#index'
  get '/powers/:id', to: 'powers#show'
  patch '/powers/:id', to: 'powers#update'
  post '/hero_powers', to: 'hero_powers#create'
end
