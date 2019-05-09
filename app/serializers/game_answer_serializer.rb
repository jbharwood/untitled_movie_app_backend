class GameAnswerSerializer < ActiveModel::Serializer
  attributes :id, :game_question_id, :title
end
