json.extract! song, :id, :nane, :duration, :created_at, :updated_at
json.url song_url(song, format: :json)