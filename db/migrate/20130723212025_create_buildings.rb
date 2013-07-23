class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :code
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :buildings, :code, unique: true
  end
end
