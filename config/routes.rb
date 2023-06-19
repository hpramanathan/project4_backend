Rails.application.routes.draw do
  get 'private/test'
  get 'api/v1/current_user', to: 'current_user#index'

  devise_for :users, path: '', path_names: {
    sign_in: 'api/v1/login',
    sign_out: 'api/v1/logout',
    registration: 'api/v1/signup'
  },
  controllers: {
    sessions: 'api/v1/users/sessions',
    registrations: 'api/v1/users/registrations'
  }

  namespace :api do 
    namespace :v1 do
      resources :users do
        resources :posts
      end
      resources :posts
      resources :quizzes
    end
  end

  # Define your application routes per the DSL in 
  # https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
