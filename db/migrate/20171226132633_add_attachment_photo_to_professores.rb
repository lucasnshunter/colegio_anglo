class AddAttachmentPhotoToProfessores < ActiveRecord::Migration
  def self.up
    change_table :professores do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :professores, :photo
  end
end
