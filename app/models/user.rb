class User < ApplicationRecord
  has_secure_password
  has_many :galleries
  has_many :pieces, through: :galleries

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true
end
