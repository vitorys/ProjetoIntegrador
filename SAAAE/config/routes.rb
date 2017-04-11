Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  resources :cidades
  resources :estados
  resources :pessoas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
