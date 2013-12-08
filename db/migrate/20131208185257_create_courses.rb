class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_id
      t.string :name
      t.integer :duration

      t.timestamps
    end
  end
end
