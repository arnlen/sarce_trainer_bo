class CreateGivenAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :given_answers do |t|
      t.string :answer
      t.boolean :is_correct
      t.integer :user_id,       index: true
      t.integer :question_id,   index: true

      t.timestamps
    end
  end
end
