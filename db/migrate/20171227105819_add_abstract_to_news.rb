class AddAbstractToNews < ActiveRecord::Migration
  def change
    add_column :news, :abstract, :text
  end
end
