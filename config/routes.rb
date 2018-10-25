Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :answered_questions
      resources :categories
      resources :questions
      resources :users, only: [:index]

      post '/users', to: 'users#authenticate'
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
