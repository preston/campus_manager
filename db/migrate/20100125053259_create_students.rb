class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.integer :user_id, :null => false
      t.integer :course_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
