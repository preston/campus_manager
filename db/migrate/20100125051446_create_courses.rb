class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.integer :semester_id, :null => false
      t.string  :name, :null => false
      t.text    :description, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
