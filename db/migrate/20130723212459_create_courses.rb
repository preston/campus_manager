class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :room_id
      t.integer :semester_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
