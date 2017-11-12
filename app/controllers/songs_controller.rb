class SongsController < ApplicationController
  def show
    @song = Song.find
  end

  def new
    artist = Artist.find(params[:artist_id])
    @song = artist.songs.build
  end
end
