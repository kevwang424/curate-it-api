class Piece < ApplicationRecord
  has_many :galleries, through: :gallery_pieces
  has_many :gallery_pieces
end
