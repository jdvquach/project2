class Review < ApplicationRecord
  belongs_to :attraction, optional:true
  belongs_to :user, optional:true
end
