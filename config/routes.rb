Rails.application.routes.draw do
  resources :artists
  resources :genres
  resources :songs

  get '/', to: 'application#index', as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
