class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :gallery_id
      t.string :name
      t.decimal :rating
      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
