# Be sure to restart your server when you modify this file.

# Required by EmberJS http://emberjs.com/api/data/classes/DS.ActiveModelSerializer.html
ActiveModel::Serializer.setup do |config|
  config.embed = :ids
  config.embed_in_root = true
end
