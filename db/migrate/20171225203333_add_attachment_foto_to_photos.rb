class AddAttachmentFotoToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :photos, :foto
  end
end
