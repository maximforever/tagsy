class RemoveColumnToTrack < ActiveRecord::Migration
  def change
    remove_column :tracks, :year_writter, :string
  end
end
