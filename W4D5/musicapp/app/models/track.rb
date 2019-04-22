# == Schema Information
#
# Table name: tracks
#
#  id          :bigint(8)        not null, primary key
#  title       :string           not null
#  ord         :integer          not null
#  album_id    :integer          not null
#  bonus_track :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Track < ApplicationRecord
  validates :title, :ord, :album_id, presence: true
  validates :bonus_track, inclusion: { in: [true, false] }
  
  belongs_to :album

  has_one :band,
  through: :album,
  source: :band
end
