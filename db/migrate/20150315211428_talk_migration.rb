class TalkMigration < ActiveRecord::Migration
	def change
    	create_table :talks do |t|
      		t.string :title
      		t.text :description
 			    t.belongs_to :speaker, index: true
      		t.timestamps null: false
    	end
	end
end
