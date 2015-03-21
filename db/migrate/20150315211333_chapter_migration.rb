class ChapterMigration < ActiveRecord::Migration
	def change
		create_table :chapters do |t|
			t.integer :number
			t.datetime :date
			t.belongs_to :speaker, index: true
			t.belongs_to :talk, index: true
			t.belongs_to :place, index: true
			t.timestamps null: false
		end
	end
end
