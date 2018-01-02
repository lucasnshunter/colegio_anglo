class AddAttachmentPhotoToCalendarios < ActiveRecord::Migration
  def self.up
    change_table :calendarios do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :calendarios, :photo
  end
end
