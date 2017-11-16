class SongsController < ApplicationController

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build
  end

  def create
     song_params = params.require(:song).permit(:name)
     @artist = Artist.find(params[:artist_id])
     @song = @artist.songs.new(song_params)

     respond_to do |format|
       if @song.save
         format.html {redirect_to artist_path(@artist.id), notice: 'song was successfully created'}
         format.json {render :show, status: :created, location: @song}
       else
         format.html { redirect_to artist_path(@artist.id) }
         format.json { render jons: @song.errors, status: :unprocessable_entity }
      end
   end

  def destroy
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])

    @song.destroy
    redirect_to root_path
  end
end
end
