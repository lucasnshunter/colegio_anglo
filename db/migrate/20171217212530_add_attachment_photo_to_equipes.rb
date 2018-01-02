class AddAttachmentPhotoToEquipes < ActiveRecord::Migration
  def self.up
    change_table :equipes do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :equipes, :photo
  end
end
