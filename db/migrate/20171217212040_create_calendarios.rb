class CreateCalendarios < ActiveRecord::Migration
  def change
    create_table :calendarios do |t|
      t.string :titulo
      t.string :ano

      t.timestamps null: false
    end
  end
end
