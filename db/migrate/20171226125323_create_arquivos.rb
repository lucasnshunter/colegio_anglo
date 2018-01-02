class CreateArquivos < ActiveRecord::Migration
  def change
    create_table :arquivos do |t|
      t.string :titulo
      t.text :descricao
      t.date :data_criacao
      t.date :data_prioridade
      t.integer :professore_id

      t.timestamps null: false
    end
  end
end
