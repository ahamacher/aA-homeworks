# == Schema Information
#
# Table name: albums
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  yr         :date             not null
#  band_id    :integer          not null
#  live_album :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ApplicationRecord
  validates :title, :yr, :band_id, presence: true
  validates :live_album, inclusion: { in: [true, false] }
  belongs_to :band

  has_many :tracks, dependent: :destroy

end
