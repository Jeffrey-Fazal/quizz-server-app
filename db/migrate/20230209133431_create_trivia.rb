class CreateTrivia < ActiveRecord::Migration[5.2]
  def change
    create_table :trivia do |t|
      t.string :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.integer :correct_answer

      t.timestamps
    end
  end
end
