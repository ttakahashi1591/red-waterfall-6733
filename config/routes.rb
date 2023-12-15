Rails.application.routes.draw do
  root 'welcome#index'
  
  get 'search', to: 'search#index'

  resources :characters, only: [:index]
end
