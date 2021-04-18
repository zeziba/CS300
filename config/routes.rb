Rails.application.routes.draw do
  root 'project_projectors#index'
  resources :project_projectors
  resources :comments
  resources :accesslevels
  resources :rootusers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
