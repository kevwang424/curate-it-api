class PieceShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist_name, :classification, :century, :culture, :image_url, :dimensions, :label_text, :commentary, :dated
end
