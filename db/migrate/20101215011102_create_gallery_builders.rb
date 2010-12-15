class CreateGalleryBuilders < ActiveRecord::Migration
  def self.up
    create_table :gallery_builders do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :gallery_builders
  end
end
