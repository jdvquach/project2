class User < ApplicationRecord
  has_secure_password  #for password password_digest
  has_many :reviews
  has_many :attractions
end
