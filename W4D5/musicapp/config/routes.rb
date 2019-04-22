Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :bands
  resources :bands, only: [:show] do
    resources :albums, only: [:new]
  end
  resources :albums, except: [:index, :new]

  resources :albums, only: [:show] do
    resources :tracks, only: [:new]
  end
  resources :tracks, except: [:index, :new]

  root to: redirect('/bands')
end
