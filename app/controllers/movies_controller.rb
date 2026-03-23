class MoviesController < ApplicationController
  def new
    @movie = Movie.new
    @list = List.find(params[:list_id])
  end
  def create
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:movie][:title])
    @movie.update(list: @list)

    redirect_to list_path(@list)
  end
  def destroy
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to list_path(@list)
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating, :list_id)
  end
end
