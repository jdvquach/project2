class Attraction < ApplicationRecord
  belongs_to :region, optional: true

  validates :name, presence: true, uniqueness: true
  validates :region_id, presence: true
  has_many :reviews

  geocoded_by :address
  after_validation :geocode
end
