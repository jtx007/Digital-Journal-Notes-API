Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :entries
        resources :users
        get '/users/ping', to: 'users#ping'
        
      end
    end
    post '/auth/login', to: 'authentication#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
