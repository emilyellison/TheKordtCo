class BlogPost < ActiveRecord::Base
  attr_accessible :content, :title, :display
  
  has_many :comments, as: :commentable
  
  validates :title, presence: true
  validates :content, presence: true
  
  scope :ready_for_display, where(display: true)

end
