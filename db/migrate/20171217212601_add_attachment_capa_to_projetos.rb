class AddAttachmentCapaToProjetos < ActiveRecord::Migration
  def self.up
    change_table :projetos do |t|
      t.attachment :capa
    end
  end

  def self.down
    remove_attachment :projetos, :capa
  end
end
