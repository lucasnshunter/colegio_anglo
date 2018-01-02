class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :titulo
      t.text :texto
      t.string :link

      t.timestamps null: false
    end
  end
end
