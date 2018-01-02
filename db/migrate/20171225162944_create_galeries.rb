class CreateGaleries < ActiveRecord::Migration
  def change
    create_table :galeries do |t|
      t.string :titulo
      t.date :data

      t.timestamps null: false
    end
  end
end
