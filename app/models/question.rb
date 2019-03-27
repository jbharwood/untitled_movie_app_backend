class Question < ApplicationRecord
  has_many :game_questions
  has_many :game_instances, through: :game_questions
  has_many :answers
end
