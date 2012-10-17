class Video < ActiveRecord::Base
  attr_accessible :description, :link, :title, :display, :writer, :director, :producer
  
  validates :title, presence: true
  validates :link, presence: true
  
  scope :write, where(write: true)
  scope :direct, where(direct: true)
  scope :produce, where(produce: true)
  
end
