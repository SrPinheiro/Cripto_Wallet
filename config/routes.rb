Rails.application.routes.draw do
  resources :welcome
  resources :coins
  get '/olaNino', to: 'welcome#ola'
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
