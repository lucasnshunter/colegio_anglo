class AddAttachmentPhotoToProvas < ActiveRecord::Migration
  def self.up
    change_table :provas do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :provas, :photo
  end
end
