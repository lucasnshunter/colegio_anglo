class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :nome
      t.string :data_postagens
      t.string :galery_id

      t.timestamps null: false
    end
  end
end
