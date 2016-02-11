class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :body
      t.text :answers
      t.text :correct_answers
      t.text :explanation
      t.integer :documentation_id, index: true

      t.timestamps
    end
  end
end
