class SongsController < ApplicationController
  before_action :set_billboard
  # before_action :set_artist
  # before_action :set_song, only: [:show, :edit, :update, :destroy]
  
  def index
    @songs = Song.all
  end

  def show 
  end

  def new
    @song = @billboard.songs.new
    @artists = Artist.all - @billboard.artists
    render partial: "form"
  end
  
  def create
    @artists = Artist.all - @billboard.artists
    @song = @billboard.songs.new(song_params)
    if @song.save
      redirect_to @billboard
    else
      render partial: "form"
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @song.update(song_params)
      redirect_to billboard_path [@billboard]
    else
      render partial: "form"
    end
  end

  def destroy
    @song.destroy
    redirect_to billboard_path(@billboard)
  end

  private
  def set_billboard
    @billboard = Billboard.find(params[:billboard_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

end
