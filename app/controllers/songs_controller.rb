class SongsController < ApplicationController


  def show
    @song = Artist.song.find(params[:id])
  end

  def new
    artist = Artist.find(params[:artist_id])
    @song = artist.songs.build
  end

  def create
     song_params = params.require(:song).permit(:name)

     @song = Song.new(dinosaur_params)

     if @song.save
        redirect_to @artist
     else
        render 'new'
     end
   end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy
    redirect_to artist_path
  end

end
