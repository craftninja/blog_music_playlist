class SongController < ApplicationController

  def index
    @songs = Song.all
  end

  def new

  end

  def create
    song = Song.new
    song.title = params[:title]
    song.url = params[:url]
    song.save
    redirect_to '/song'
  end

end
