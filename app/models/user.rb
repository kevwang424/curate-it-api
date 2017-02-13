class User < ApplicationRecord
  has_secure_password
  has_many :galleries
  has_many :pieces, through: :galleries

end
