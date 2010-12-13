class Gallery < ActiveRecord::Base
  attr_accessible :name, :user_id, :shoot_date, :collection

  # destroy all photos when a gallery is destroyed
  has_many :photos, :dependent => :destroy

  has_attached_file :collection
  validates_attachment_content_type :collection, :content_type => 'application/zip'
end
