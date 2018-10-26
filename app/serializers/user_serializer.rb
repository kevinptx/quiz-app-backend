class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :answered_questions
end
