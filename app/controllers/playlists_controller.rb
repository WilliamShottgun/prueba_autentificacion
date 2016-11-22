class PlaylistsController < ApplicationController

	before_action :authenticate_user!
	load_and_authorize_resource
  def index
  	@playlists = current_user.playlists # esto lee los atrapados a partir del usuario logueado
  end

  def create
  # Buscamos los songes que vamos a asignar al usuario
  # Con delete_if, borramos los parametros en blanco
  new_songs = Song.find(
  user_playlist_params[:song_ids].delete_if(&:empty?) #
  )
  # asignamos los nuevos songes al usuario
  current_user.songs << new_songs
  if current_user.save
  flash[:notice] = 'success'
  else
  flash[:error] = 'fail'
  end

  def canciones
  # buscamos el Playlist con el id que viene en la ruta
  playlist = Playlist.find params[:id]
  # sumamos en 1 su nivel
  playlist.level += 1
  if playlist.save # Si graba
  flash[:notice] = 'success'
  else # Si lanza un error
  flash[:error] = 'fail'
  end
  # redireccionamos a la vista de nuestros atrapados
  redirect_to playlists_path
  end
  redirect_to playlists_path
  end

  def new
  @songs = Song.all
  end

  def create
  # Buscamos los songes que vamos a asignar al usuario
  # Con delete_if, borramos los parametros en blanco
  new_songs = Song.find(
  user_playlist_params[:song_ids].delete_if(&:empty?) #
  )
  # asignamos los nuevos songes al usuario
  current_user.songs << new_songs
  if current_user.save
  flash[:notice] = 'success'
  else
  flash[:error] = 'fail'
  end
  redirect_to playlists_path
  end

  private
  def user_playlist_params
  params.require(:user).permit(song_ids: [])
  end
end

