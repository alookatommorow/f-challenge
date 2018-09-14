Rails.application.routes.draw do
  devise_for :employers
  devise_for :applicants

  resources :applicants, only: :show
  resources :employers, only: :show
  resources :job_applications, only: :create

  root to: 'welcome#index'
end
