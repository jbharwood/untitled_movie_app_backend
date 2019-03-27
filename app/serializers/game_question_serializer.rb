class GameQuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :game_instance_id, :completed, :question, :answers, :input


  def answers
    object.question.answers.map do |answer|
      answer
    end
  end

end
