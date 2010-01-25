class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.integer :building_id, :null => false
      t.string  :name, :null => false
      t.text    :description, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
