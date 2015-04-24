class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :published_at, :cover_url, :length
  has_many :songs
end
