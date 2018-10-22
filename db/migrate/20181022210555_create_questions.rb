class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :ac_1
      t.string :ac_2
      t.string :ac_3
      t.string :correct_answer
      t.integer :cat_id

      t.timestamps
    end
  end
end
