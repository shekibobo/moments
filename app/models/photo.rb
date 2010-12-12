class Photo < ActiveRecord::Base
  attr_accessible :gallery_id, :name, :rating, :image

  belongs_to :gallery
  validates_associated :gallery

  has_attached_file :image, :styles => { :small => "150x150>" },
    :path => ":rails_root/public/galleries/:gallery/:style/:basename.:extension",
    :url => "/galleries/:gallery/:style/:basename.:extension"
  validates_attachment_presence :image

end
