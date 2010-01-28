class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.integer :course_id, :null => false
      t.string  :name, :null => false
      t.string  :url, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
