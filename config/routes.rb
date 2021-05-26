Rails.application.routes.draw do
  resources :projects
  resources :projects do
  	resources :comments
  end
  
  root 'projects#index'
  get 'project_comments_path' => "comments#create"
  
  devise_for :project_users do
    get '/project_users/sign_out' => 'devise/sessions#destroy'
  end
  
  get 'projects/image/:id' => 'projects#image'

  
end
