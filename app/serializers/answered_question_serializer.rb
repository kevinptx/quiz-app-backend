class AnsweredQuestionSerializer < ActiveModel::Serializer
  attributes :id, :correct_answer
  has_one :user
  has_one :question
end
