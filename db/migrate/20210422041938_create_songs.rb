class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.integer :genre_id
      add_foreign_key :songs, :artists
      add_foreign_key :songs, :genres
    end
  end
end
