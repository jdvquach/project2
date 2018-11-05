class Attraction < ApplicationRecord
  belongs_to :region, optional: true
  has_many :reviews
end
