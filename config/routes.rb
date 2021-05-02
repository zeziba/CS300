Rails.application.routes.draw do
  resources :projects
  devise_for :project_users
  root 'projects#index'
  get '/projects', to: "projects#index"
  get "/projects/:id", to: "projects#show"
  get 'project_users/sign_out', to: "projects#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
