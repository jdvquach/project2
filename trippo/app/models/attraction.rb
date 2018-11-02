class Attraction < ApplicationRecord
  belongs_to :region, optional: true
end
