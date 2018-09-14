Rails.application.routes.draw do
  devise_for :employers
  devise_for :applicants

  root to: 'welcome#index'
end
