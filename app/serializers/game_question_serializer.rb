class GameQuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_id, :game_instance_id, :completed, :question, :answers, :input, :game_answers

  def answers
    object.question.answers.map do |answer|
      answer
    end
  end

  def game_answers
    object.game_answers.map do |answer|
      answer
    end
  end

end
