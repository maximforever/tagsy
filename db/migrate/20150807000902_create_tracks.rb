class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :artist
      t.string :album
      t.string :year_written 
      t.timestamps null: false
    end
  end
end
