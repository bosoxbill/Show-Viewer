class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.belongs_to :channel, null: false, index: true
      t.string :title, null: false
      t.string :yt_video_identifier, null: false
      t.time :release_date, null: false
      t.time :video_length
      t.integer :view_count
      t.integer :like_count
      t.integer :dislike_count
      t.text :metadata
      t.boolean :in_playlists?
      t.string :playlists

      t.timestamps null: false
    end
  end
end
