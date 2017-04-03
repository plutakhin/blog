Rails.application.routes.draw do
  root to: 'welcome#index'

  get 'login', to: 'security#login'
  get 'signup', to: 'security#signup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
