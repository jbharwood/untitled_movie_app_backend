class GameUserSerializer < ActiveModel::Serializer
  attributes :id, :game_instance_id, :user_id, :score, :host
end
