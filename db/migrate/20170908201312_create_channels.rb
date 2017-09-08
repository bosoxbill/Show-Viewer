class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :channel_name
      t.datetime :last_fetch
      t.datetime :freshness

      t.timestamps null: false
    end
  end
end