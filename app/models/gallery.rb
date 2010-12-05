class Gallery < ActiveRecord::Base
  attr_accessible :name, :user_id, :shoot_date

  # destroy all photos when a gallery is destroyed
  has_many :photos, :dependent => :destroy
  
end
