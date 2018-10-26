class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :name, :ac_1, :ac_2, :ac_3, :correct_answer, :cat_id
  has_one :category
  has_many :answered_questions
  has_many :users, through: :answered_questions
end
