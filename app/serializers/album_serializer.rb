class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :published_at, :cover_url, :length
  has_one :artist
end
