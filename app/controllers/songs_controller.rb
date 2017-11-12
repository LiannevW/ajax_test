class SongsController < ApplicationController
before_action :set_artist

  def show
    @song = Artist.song.find(params[:id])
  end

  def new
    artist = Artist.find(params[:artist_id])
    @song = artist.songs.build
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy
    redirect_to artist_path
  end

private

def set_artist
  @artist = Artist.find(params[:id])
end
end
