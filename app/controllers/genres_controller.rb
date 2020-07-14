class GenresController < ApplicationController
  
  def show 
    @genre = Genre.find(params[:id])
  end
  
  def new 
    @genre = Genre.new
  end
  
  def create 
    @genre = Genre.new(genre_params)
    @genre.save 
    redirect_to genre_path(@genre)
  end
  
  def edit 
    @artist = Artist.find(params[:id])
  end
  
  def update 
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end 
  
  private 
  
  def artist_params 
    params.require(:artist).permit(:name, :bio)
end