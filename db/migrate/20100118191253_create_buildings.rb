class CreateBuildings < ActiveRecord::Migration
  def self.up
    create_table :buildings do |t|
      t.string  :code, :null => false
      t.string  :name, :null => false
      t.text    :description, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :buildings
  end
end
