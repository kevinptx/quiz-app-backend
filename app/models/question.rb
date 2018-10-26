class Question < ApplicationRecord
  belongs_to :category, foreign_key: :cat_id
  has_many :answered_questions
  has_many :users, through: :answered_questions
end


