class CreateEgressos < ActiveRecord::Migration
  def change
    create_table :egressos do |t|
      t.string :nome
      t.string :faculdade
      t.string :curso

      t.timestamps null: false
    end
  end
end
