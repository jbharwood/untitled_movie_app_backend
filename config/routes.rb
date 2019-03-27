Rails.application.routes.draw do
  resources :game_users
  resources :game_instances
  resources :game_questions
  resources :game_question_answers
  resources :answers
  resources :questions
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
end
