class User < ApplicationRecord
  has_secure_password  #for password password_digest

end
