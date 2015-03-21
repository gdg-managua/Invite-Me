class PlaceMigration < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :coordinates
      t.text :description
      t.timestamps null: false
    end
  end
end
