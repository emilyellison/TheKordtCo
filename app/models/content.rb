class Content < ActiveRecord::Base
  attr_accessible :content, :element, :page
  
  validates :page, presence: true
  validates :element, presence: true
  
end
