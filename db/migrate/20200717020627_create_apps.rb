class CreateApps < ActiveRecord::Migration[6.0]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :storage_size

      t.timestamps
    end
  end
end
