class CreateRanks < ActiveRecord::Migration[5.0]
  def change
    create_table :ranks do |t|
      t.string :name
      t.string :short_name
      t.string :image_url

      t.timestamps
    end
  end
end
