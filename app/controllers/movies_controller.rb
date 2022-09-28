class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end
  def create
    movie=Movie.create(params.permit(:title,:year,:length,:director,:description,:poster_url,:category,:discount,:female_director))
    render json: movie, status: :created
  end

end
