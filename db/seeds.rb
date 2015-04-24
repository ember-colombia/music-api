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
  cover_url: 'http://upload.wikimedia.org/wikipedia/en/a/a7/Random_Access_Memories.jpg'
)

discovery = Album.create(
  artist: daft_punk,
  name: 'Discovery',
  published_at: DateTime.new(2001, 2, 26),
  cover_url: 'http://upload.wikimedia.org/wikipedia/en/a/ae/Daft_Punk_-_Discovery.jpg'
)

# Songs
random_access_memories_songs = [
  { name: 'Give Life Back to Music', url: 'http://picosong.com/cdn/16497e861fb0cb7cfb118ce3654b4c1a.mp3' },
  { name: 'The Game of Love', url: 'http://picosong.com/cdn/a50f249f51a8979abf44467e3e02d272.mp3' },
  { name: 'Giorgio by Moroder', url: 'http://picosong.com/cdn/65910b7200a0ac43afb6bb0553613ec2.mp3' },
  { name: 'Within', url: 'http://picosong.com/cdn/4c5df5de2964aab43a2c93845185007e.mp3' },
  { name: 'Instant Crush (feat. Julian Casablancas)', url: 'http://picosong.com/cdn/81bdc0b920e3ac651c050f8f03464639.mp3' },
  { name: 'Lose Yourself to Dance (feat. Pharrell Williams)', url: 'http://picosong.com/cdn/e18e1a956603c04472fd17fb16c0d161.mp3' },
  { name: 'Touch (feat. Paul Williams)', url: 'http://picosong.com/cdn/b8719e69ba5ad60eb7b12d21dff42386.mp3' },
  { name: 'Get Lucky (feat. Pharrell Williams)', url: 'http://picosong.com/cdn/e3aa509ae41eba83db2283fb33f077c5.mp3' },
  { name: 'Beyond', url: 'http://picosong.com/cdn/ac18b10a7f71e6126bee7901cc82c6c7.mp3' },
  { name: 'Motherboard', url: 'http://picosong.com/cdn/498df7cccf9d6277c1128c5b938818cf.mp3' },
  { name: 'Fragments of Time (feat. Todd Edwards)', url: 'http://picosong.com/cdn/85df0f7fee60a40207533faeae4a26a9.mp3' },
  { name: 'Doin\' It Right (feat. Panda Bear)', url: 'http://picosong.com/cdn/4fca5d4dd8c9491702c9b4070bfaf929.mp3' },
  { name: 'Contact', url: 'http://picosong.com/cdn/510e9484f5aeecb73346319b41f93bec.mp3' }
]

random_access_memories_songs.each_with_index do |song, index|
  song[:album] = random_access_memories
  song[:artist] = daft_punk
  song[:track_number] = index + 1
end

discovery_songs = [
  { name: 'One More Time', url: 'http://picosong.com/cdn/78c88832b65a8235b42bc16263eab278.mp3' }
]

discovery_songs.each_with_index do |song, index|
  song[:album] = discovery
  song[:artist] = daft_punk
  song[:track_number] = index + 1
end

Song.create(random_access_memories_songs)
Song.create(discovery_songs)
