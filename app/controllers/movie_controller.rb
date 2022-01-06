class MovieController < ApplicationController
  def index
    @movies = Movie.all

    @movies = @movies.where('name ilike ?', "%#{params[:q]}%") if params[:q] && params[:q] != ''
  end
  def moviepage()
    @movie = Movie.find(params[:id])
  end
end
