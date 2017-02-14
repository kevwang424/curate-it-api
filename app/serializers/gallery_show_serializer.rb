class GalleryShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :piece_ids
end
