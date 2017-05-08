Rails.application.routes.draw do
  resources :relatorio_pedagogicos
  devise_for :users
  resources :relatorio_gerals
  resources :relatorio_psicologicos
  resources :relatorio_assistente_socials
  resources :relatorios
  resources :funcionarios
  resources :alunos
  resources :credencials
  resources :pessoas
  resources :documentos

devise_scope :user do
  root to: "devise/sessions#new"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
