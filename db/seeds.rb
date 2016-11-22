Playlist.destroy_all
Song.destroy_all
User.destroy_all

10.times do
	Playlist.create(
		user: User.select(:id).order('RANDOM()').first, #Buscamos un user Random
		song: Song.select(:id).order('RANDOM()').first, # Buscamos un song random
		level: rand(1..10)

User.create(
	[
		{
			name: 'Victor',
			email: 'vdelammazah@gmail.com',
			password: '111111',
			role: 'admin'
		},
		{
			name: 'usuario2',
			email: 'usuario2@usuario.com',
			password: '111111',
			role: 'trainer'
		}
	]
)

Song.create(
	[
		{
			name: 'all you need is love',
			duration: '120'
		},
		{
			name: 'yesterday',
			duration: '200'
		},
		{
			name: 'californication',
			duration: '222'
		},
		{
			name: 'iron maiden',
			duration: '111'
		}
	]
)