class Item < ActiveRecord::Base
  has_attached_file :image
  attr_accessible :body, :title
  validates :title, :body, :presence => true
end
