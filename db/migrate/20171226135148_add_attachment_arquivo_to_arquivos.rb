class AddAttachmentArquivoToArquivos < ActiveRecord::Migration
  def self.up
    change_table :arquivos do |t|
      t.attachment :arquivo
    end
  end

  def self.down
    remove_attachment :arquivos, :arquivo
  end
end
