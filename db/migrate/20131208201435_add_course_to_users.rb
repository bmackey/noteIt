class AddCourseToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :course_id, :string, default:"Unselected"
  end
end
