class Video < ActiveRecord::Base
  attr_accessible :description, :link, :title, :display, :writer, :director, :producer
  
  validates :title, presence: true
  validates :link, presence: true
  
  scope :written, where(writer: true)
  scope :directed, where(director: true)
  scope :produced, where(producer: true)
  scope :ready_for_display, where(display: true)
  
  def vimeo
    "http://player.vimeo.com/video/#{self.link.split('/').last.to_s}?title=1&amp;byline=1&amp;portrait=1"
  end
  
end
