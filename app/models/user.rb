class User < ApplicationRecord
  has_many :answered_questions
  has_many :questions, through: :answered_questions
end 
