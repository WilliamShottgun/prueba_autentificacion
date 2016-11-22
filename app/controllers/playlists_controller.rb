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
  user_catched_params[:song_ids].delete_if(&:empty?) #
  )
  # asignamos los nuevos songes al usuario
  current_user.songs << new_songs
  if current_user.save
  flash[:notice] = 'success'
  else
  flash[:error] = 'fail'
  end
  redirect_to ´playlists_path
  end
end

