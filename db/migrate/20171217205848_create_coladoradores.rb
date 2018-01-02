class CreateColadoradores < ActiveRecord::Migration
  def change
    create_table :coladoradores do |t|
      t.string :nome
      t.string :cargo

      t.timestamps null: false
    end
  end
end
