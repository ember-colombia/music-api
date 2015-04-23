class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :length
  has_one :artist
end
