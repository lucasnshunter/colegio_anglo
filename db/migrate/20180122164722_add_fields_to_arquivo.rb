class AddFieldsToArquivo < ActiveRecord::Migration
  def change
    add_column :arquivos, :turma, :integer
  end
end
