class CreateProfessores < ActiveRecord::Migration
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :disciplina
      t.text :descricao
      t.integer :nucleo_id

      t.timestamps null: false
    end
  end
end
