class Photo < ActiveRecord::Base
  attr_accessible :gallery_id, :name, :rating

  belongs_to :gallery
  validates_associated :gallery

  
end
