Rails.application.routes.draw do
  resources :projects
  
  root 'projects#index'
  
  devise_for :project_users do
    get '/project_users/sign_out' => 'devise/sessions#destroy'
  end
  

  get '/projects', to: "projects#index"
  get "/projects/:id", to: "projects#show"
  get '/project_users', to: "projects#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
