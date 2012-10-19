class Content < ActiveRecord::Base
  attr_accessible :description, :element, :page
  
  validates :page, presence: true
  validates :element, presence: true
  
  def self.description_for(page, element)
    self.where(page: page, element: element).first.description
  end
  
end
