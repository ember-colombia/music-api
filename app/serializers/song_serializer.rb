class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :length
end
