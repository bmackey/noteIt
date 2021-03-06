class Post < ActiveRecord::Base
  attr_accessible :content, :star_rating, :user_id

  belongs_to :user
  belongs_to :projects

  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
