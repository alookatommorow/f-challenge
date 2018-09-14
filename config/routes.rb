Rails.application.routes.draw do
  devise_for :employers
  devise_for :applicants

  resources :applicants, only: :index
  resources :employers, only: :index

  root to: 'welcome#index'
end
