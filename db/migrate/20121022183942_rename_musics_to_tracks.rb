class RenameMusicsToTracks < ActiveRecord::Migration
  def change
    rename_table :musics, :tracks
  end
end
