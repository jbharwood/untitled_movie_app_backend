class GameInstance < ApplicationRecord
  has_many :game_users
  has_many :users, through: :game_users
  has_many :game_questions
  has_many :questions, through: :game_questions

end
