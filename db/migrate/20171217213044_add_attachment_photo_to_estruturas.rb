class AddAttachmentPhotoToEstruturas < ActiveRecord::Migration
  def self.up
    change_table :estruturas do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :estruturas, :photo
  end
end
