class User < ApplicationRecord
  has_many :game_users
  has_many :game_instances, through: :game_users
end
