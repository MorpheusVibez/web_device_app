class CreateDevices < ActiveRecord::Migration[6.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.integer :storage_size_in_GB
      t.string :color
      t.integer :user_id
      t.integer :app_id
      
     

      t.timestamps
    end
  end
end
