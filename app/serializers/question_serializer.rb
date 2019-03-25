class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :synopsis, :genre, :keywords, :credits
end
