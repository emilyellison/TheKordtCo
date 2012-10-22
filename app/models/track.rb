class Track < ActiveRecord::Base
  attr_accessible :description, :display, :link, :title
  
  validates :title, presence: true
  validates :link, presence: true
  
  scope :ready_for_display, where(display: true)
  
end
