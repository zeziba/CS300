Rails.application.routes.draw do
  resources :projects
  
  root 'projects#index'
  
  devise_for :project_users , :controllers => { registrations: 'registrations'} do
    get '/project_users/sign_out' => 'devise/sessions#destroy'
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
