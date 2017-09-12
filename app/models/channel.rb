class Channel < ActiveRecord::Base
  has_many :videos
  validates :channel_name, presence: true


end
