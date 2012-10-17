class BlogPost < ActiveRecord::Base
  attr_accessible :content, :title, :display
  
  validates :title, presence: true
  validates :content, presence: true

end
