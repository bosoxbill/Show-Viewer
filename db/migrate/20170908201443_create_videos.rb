class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.belongs_to :channel, null: false
      t.datetime :release_date
      t.time :video_length

      t.timestamps null: false
    end
  end
end
