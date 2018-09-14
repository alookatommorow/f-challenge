Rails.application.routes.draw do
  devise_for :employers
  devise_for :applicants

  resources :applicants, only: :show
  resources :employers, only: :show

  root to: 'welcome#index'
end
