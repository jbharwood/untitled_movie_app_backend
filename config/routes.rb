Rails.application.routes.draw do
  resources :game_answers
  resources :game_users
  resources :game_instances
  resources :game_questions
  resources :game_question_answers
  resources :answers
  resources :questions
  resources :users
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  mount ActionCable.server => '/cable'
end
