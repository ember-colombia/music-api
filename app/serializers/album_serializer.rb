class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :published_at, :cover_url
  has_many :songs
end
