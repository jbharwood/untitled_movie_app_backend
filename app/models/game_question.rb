class GameQuestion < ApplicationRecord
  belongs_to :game_instance
  belongs_to :question
end
