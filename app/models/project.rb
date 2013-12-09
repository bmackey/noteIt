class Project < ActiveRecord::Base
  attr_accessible :description, :name, :project_id
  has_and_belongs_to_many :courses
  has_many :posts 

  # def self.search(search)
  # 	if search
  # 		where ('name LIKE ? {search}')
  # 	else
  # 		scoped
  # 	end
  # end
end
