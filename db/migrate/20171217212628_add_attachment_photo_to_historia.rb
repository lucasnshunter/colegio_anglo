class AddAttachmentPhotoToHistoria < ActiveRecord::Migration
  def self.up
    change_table :historia do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :historia, :photo
  end
end
