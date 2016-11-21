Song.destroy_all
User.destroy_all

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