Rails.application.routes.draw do
  ### Auth endpoints will be common for all apps that we will build.
  post '/auth/register', to: 'users#create'
  post '/auth/login', to: 'authentication#login'
  resources :users, param: :_username, only: :show

  ### All API endpoints for IssuesTracker application.
  namespace :issues_tracker do
    resources :projects
    resources :issues
  end
end
