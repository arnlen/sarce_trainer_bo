class CreateDailyQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_questions do |t|
      t.integer :answer_counter
      t.integer :question_id

      t.timestamps
    end
  end
end
