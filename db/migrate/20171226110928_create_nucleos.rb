class CreateNucleos < ActiveRecord::Migration
  def change
    create_table :nucleos do |t|
      t.string :titulo
      t.text :descricao

      t.timestamps null: false
    end
  end
end
