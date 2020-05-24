Rails.application.routes.draw do
  post '/auth/register', to: 'users#create'
  post '/auth/login', to: 'authentication#login'
  resources :users, param: :_username, only: :show
end
