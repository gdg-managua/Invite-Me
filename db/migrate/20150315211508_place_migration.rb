class PlaceMigration < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.float :latitud
      t.float :longitud
      t.text :description
      t.timestamps null: false
    end
  end
end
