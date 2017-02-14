class Gallery < ApplicationRecord
  belongs_to :user
  has_many :pieces, through: :gallery_pieces
  has_many :gallery_pieces

  #validates :name, presence: true
end
