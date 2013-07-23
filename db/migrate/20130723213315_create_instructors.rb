class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end
