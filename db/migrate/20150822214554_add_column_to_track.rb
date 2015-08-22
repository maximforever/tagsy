class AddColumnToTrack < ActiveRecord::Migration
  def change
    add_column :tracks, :year_written, :string
  end
end
