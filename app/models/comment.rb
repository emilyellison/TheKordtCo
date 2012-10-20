class Comment < ActiveRecord::Base
  attr_accessible :commentable_id, :commentable_type, :message, :name
  
  belongs_to :commentable, polymorphic: true
  
  validates :commentable_id, presence: true
  validates :commentable_type, presence: true
  validates :name, presence: true
  validates :message, presence: true
  
end
