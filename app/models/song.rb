class Song < ApplicationRecord
	has_many :playlists, dependent: :destroy
	has_many :songs, through: :playlists
end
