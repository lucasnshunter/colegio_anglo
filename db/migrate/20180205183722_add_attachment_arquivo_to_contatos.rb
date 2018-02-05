class AddAttachmentArquivoToContatos < ActiveRecord::Migration
  def self.up
    change_table :contatos do |t|
      t.attachment :arquivo
    end
  end

  def self.down
    remove_attachment :contatos, :arquivo
  end
end
