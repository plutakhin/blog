Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :sessions, only: [:index, :new, :destroy]
  match 'signin', to: 'sessions#sessions', via: [:get], as: :signin
  match 'signup', to: 'sessions#new', via: [:get], as: :signup
  match 'signout', to: 'sessions#destroy', via: [:delete], as: :signout
  resources :welcome, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
