class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :track_number
end
