class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :building_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
