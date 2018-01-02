class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :titulo
      t.text :texto
      t.text :descricao
      t.string :link
      t.text :frase

      t.timestamps null: false
    end
  end
end
