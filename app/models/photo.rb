class Photo < ActiveRecord::Base
  attr_accessible :gallery_id, :name, :rating, :image

  belongs_to :gallery
  validates_associated :gallery

  has_attached_file :image
  validates_attachment_presence :image

end
