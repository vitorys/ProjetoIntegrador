Rails.application.routes.draw do
  devise_for :usuarios
  resources :relatorio_gerals
  resources :relatorio_psicologicos
  resources :relatorio_assistente_socials
  resources :relatorios
  resources :funcionarios
  resources :alunos
  resources :credencials
  resources :pessoas
  resources :documentos
  root 'welcome#index'
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
