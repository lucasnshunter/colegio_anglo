class AddAttachmentPhotoToGaleries < ActiveRecord::Migration
  def self.up
    change_table :galeries do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :galeries, :photo
  end
end
