class AlbumsController < ApplicationController
  def new
    render :new
  end

  def index
    @albums = Album.all

    render :index
  end

  def edit
    @album = Album.find_by(id: params[:id])

    render :edit
  end

  def update
    @album = Album.find_by(id: params[:id])

    if @album.update_attributes(album_params)
      redirect_to album_url(@album)
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find_by(id: params[:id])

    @album.destroy
    render :destroy
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      login(@album)
      redirect_to user_url
    else
      flash[:errors] = @album.errors.full_messages
      redirect_to albums_url
    end
  end

  def show
    @album = Album.find_by(id: params[:id])

    if @album
      render :show
    else
      redirect_to albums_url
    end
  end

  private

  def album_params
    params.require(:album).permit(:name, :band_id, :year)
  end
end
