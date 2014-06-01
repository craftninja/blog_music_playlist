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

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.title = params[:title]
    song.url = params[:url]
    song.save
    redirect_to '/song'
  end

end
