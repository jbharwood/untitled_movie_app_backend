class GameInstanceSerializer < ActiveModel::Serializer
  attributes :id, :game_round, :game_status, :user_status, :game_questions, :question

  # def question
  #   object.game_questions.question.map do |question|
  #     question
  #   end
  # end
  def question
    object.game_questions.question.map do |question|
      question
    end
  end

end
