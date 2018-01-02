class CreateEquipes < ActiveRecord::Migration
  def change
    create_table :equipes do |t|
      t.string :titulo
      t.text :texto

      t.timestamps null: false
    end
  end
end
