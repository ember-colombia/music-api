# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Artists
daft_punk = Artist.create(name: 'Daft Punk', website_url: 'http://daftpunk.com')
parov_stelar = Artist.create(name: 'Parov Stelar', website_url: 'http://parovstelar.com')
bob_marley = Artist.create(name: 'Bob Marley', website_url: 'http://bobmarley.com')

# Albums
random_access_memories = Album.create(
  artist: daft_punk,
  name: 'Random Access Memories',
  published_at: DateTime.new(2013, 5, 17),
  length: 4464,
  cover_url: 'http://upload.wikimedia.org/wikipedia/en/a/a7/Random_Access_Memories.jpg'
)

# Songs
random_access_memories_songs = [
  { name: 'Give Life Back to Music', url: 'http://picosong.com/cdn/16497e861fb0cb7cfb118ce3654b4c1a.mp3', length: 274 },
  { name: 'The Game of Love', url: 'http://picosong.com/cdn/a50f249f51a8979abf44467e3e02d272.mp3', length: 322 },
  { name: 'Giorgio by Moroder', url: 'http://picosong.com/cdn/65910b7200a0ac43afb6bb0553613ec2.mp3', length: 544 }
]

random_access_memories_songs.each do |song|
  song[:album] = random_access_memories
  song[:artist] = daft_punk
end

Song.create(random_access_memories_songs)
