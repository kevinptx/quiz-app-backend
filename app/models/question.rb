class Question < ApplicationRecord
  belongs_to :category 
  has_many :answered_questions
  has_many :users, through: :answered_questions
end

# test comment
