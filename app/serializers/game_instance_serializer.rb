class GameInstanceSerializer < ActiveModel::Serializer
  attributes :id, :game_round, :game_status, :user_status
end
