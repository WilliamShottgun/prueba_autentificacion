class PlaylistsController < ApplicationController
	before_action :authenticate_user!
  def index
  	@playlists = current_user.playlists # esto lee los atrapados a partir del usuario logueado
  end
end
