class GameUser < ApplicationRecord
  belongs_to :user
  belongs_to :game_instance
end
