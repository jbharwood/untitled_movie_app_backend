class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :synopsis, :movie_id, :answers
end
