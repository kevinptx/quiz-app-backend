class CreateAnsweredQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :answered_questions do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :question, foreign_key: true
      t.boolean :correct_answer

      t.timestamps
    end
  end
end
