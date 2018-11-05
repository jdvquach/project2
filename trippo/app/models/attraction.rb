class Attraction < ApplicationRecord
  belongs_to :region, optional: true

  validates :name, presence: true, uniqueness: true
  validates :region_id, presence: true
end
