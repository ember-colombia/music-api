class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :website_url
  has_many :albums
  has_many :songs
end
