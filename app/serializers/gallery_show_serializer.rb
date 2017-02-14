class GalleryShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :pieces
end
