class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to movies_path, notice: 'Movie was successfully created' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new, notice: 'Movie was not created' }
        format.json { render json: @movie.errors, status: :unprocessable_entity}
      end
    end
  end

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to movies_path, notice: 'Movie was successfully updated' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit, notice: 'Movie was not updated' }
        format.json { render json: @movie.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :genre, :rated, :stars, :description)
  end
end
