class GameInstanceSerializer < ActiveModel::Serializer
  attributes :id, :game_round, :game_status, :user_status

  # def game_questions
  #   ActiveModel::SerializableResource.new(object.game_questions, each_serializer:GameQuestionSerializer)
  # end
  # def question
  #   object.game_questions.question.map do |question|
  #     question
  #   end
  # end
  # def question
  #   object.game_questions.question.map do |question|
  #     question
  #   end
  # end
  # def answers
  #   object.questions.map do |answer|
  #     answer
  #   end
  # end

end
