class CreateProvas < ActiveRecord::Migration
  def change
    create_table :provas do |t|
      t.string :titulo
      t.text :texto
      t.string :link

      t.timestamps null: false
    end
  end
end
