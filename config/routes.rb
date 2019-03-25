Rails.application.routes.draw do
  resources :questions
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
end
