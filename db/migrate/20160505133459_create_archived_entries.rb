class CreateArchivedEntries < ActiveRecord::Migration
  def change
    create_table :archived_entries do |t|
	  t.string :content
      t.timestamps null: false
    end
  end
end
