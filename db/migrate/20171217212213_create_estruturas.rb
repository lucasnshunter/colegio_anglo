class CreateEstruturas < ActiveRecord::Migration
  def change
    create_table :estruturas do |t|
      t.string :link
      t.string :titulo
      t.text :texto

      t.timestamps null: false
    end
  end
end
