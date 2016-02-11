class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :cis
      t.string :email,    index: true
      t.integer :rank_id, index: true

      t.timestamps
    end
  end
end
