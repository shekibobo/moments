class Gallery < ActiveRecord::Base
  require 'rubygems'
  require 'zip/zip'

  attr_accessible :name, :user_id, :shoot_date, :collection

  # destroy all photos when a gallery is destroyed
  has_many :photos, :dependent => :destroy

  has_attached_file :collection,
    :path => ":rails_root/system/:class/:basename.:extension"

  validates_attachment_content_type :collection, :content_type => 'application/zip'
  validates_attachment_presence :collection

  def extract_photos (options = {})
    export_path = collection.path.gsub('.zip', '_content')

    Zip::ZipFile.open(collection.path) { |zip_file|
      zip_file.each { |image|
        image_path = File.join(export_path, image.name)
        FileUtils.mkdir_p(File.dirname(image_path))
        unless File.exist?(image_path)
          zip_file.extract(image, image_path)
          photo = photos.build
          photo.image = File.open(image_path)
          photo.name = photo.image.original_filename.gsub(/\..*/, '')
          photo.save
        end
      }
    }
    # clean up source files, but leave the zip
    FileUtils.remove_dir(export_path)
  end

end
