User.destroy_all
Song.destroy_all
Playlist.destroy_all


Song.create(
	[
		{
			nane: 'all you need is love',
			duration: '120'
		},
		{
			nane: 'yesterday',
			duration: '200'
		},
		{
			nane: 'californication',
			duration: '222'
		},
		{
			nane: 'iron maiden',
			duration: '111'
		}
	]
)

10.times do
	Playlist.create(
		user: User.select(:id).order('RANDOM()').first, #Buscamos un user Random
		song: Song.select(:id).order('RANDOM()').first, # Buscamos un song random
		
)
end
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

