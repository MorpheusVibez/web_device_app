class CreateApps < ActiveRecord::Migration[6.0]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :storage_size
      t.integer :user_id
      t.integer :device_id

      t.timestamps
    end
  end
end
