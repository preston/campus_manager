class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :course_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
