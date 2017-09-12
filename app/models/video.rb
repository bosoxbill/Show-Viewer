class Video < ActiveRecord::Base
  belongs_to :channel
  has_and_belongs_to_many :playlists
  validates :title, presence: true
  validates :yt_video_identifier, presence: true, uniqueness: true, length: { minimum: 5 }, on: create
  validates :release_date, presence: true, if: :valid_release_date?
  validates :video_length, presence: true
  validates :view_count, numericality: true

  def valid_release_date?
    release_date <= Time.now
  end
end

