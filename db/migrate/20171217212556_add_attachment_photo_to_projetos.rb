class AddAttachmentPhotoToProjetos < ActiveRecord::Migration
  def self.up
    change_table :projetos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :projetos, :photo
  end
end
