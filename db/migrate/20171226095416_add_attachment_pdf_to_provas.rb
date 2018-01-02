class AddAttachmentPdfToProvas < ActiveRecord::Migration
  def self.up
    change_table :provas do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :provas, :pdf
  end
end
