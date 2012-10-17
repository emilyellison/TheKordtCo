class Video < ActiveRecord::Base
  attr_accessible :description, :link, :title, :display
  
  validates :title, presence: true
  validates :link, presence: true
  
end
