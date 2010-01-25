class CreateLessons < ActiveRecord::Migration
  def self.up
    create_table :lessons do |t|
      t.int :course_id
      t.string :name, :null => false
      t.text :description, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :lessons
  end
end
