class AddAttachmentCapaToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :capa
    end
  end

  def self.down
    remove_attachment :news, :capa
  end
end
