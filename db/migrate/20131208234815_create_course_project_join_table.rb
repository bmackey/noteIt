class CreateCourseProjectJoinTable < ActiveRecord::Migration
	def change
   		create_table :courses_projects, :id => false do |t|
      	t.integer :course_id
      	t.integer :project_id
    end
  end
end 

