class PieceShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist_name, :classification, :century, :place, :image_url, :dimension, :notes
end
