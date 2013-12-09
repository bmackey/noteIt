class Course < ActiveRecord::Base
  attr_accessible :course_id, :duration, :name

  has_and_belongs_to_many :projects
  has_many :users
end
