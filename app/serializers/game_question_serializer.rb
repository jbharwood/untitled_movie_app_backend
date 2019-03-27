class GameQuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :game_instance_id, :completed
end
