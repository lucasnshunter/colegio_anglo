class AddAttachmentCapaToEstruturas < ActiveRecord::Migration
  def self.up
    change_table :estruturas do |t|
      t.attachment :capa
    end
  end

  def self.down
    remove_attachment :estruturas, :capa
  end
end
