class Admin::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @status = [
      ['上映中', true],
      ['上映予定', false]
    ]
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save 
      flash[:success] = '映画を登録しました'
        redirect_to 'admin/movies'
      else
        flash.now[:danger] = 'エラーが発生しました。'
        render :new
      end
  end

  private
    def movie_params
      params.require(:movie).permit(:name, :year, :is_showing, :description, :image_url)
    end
end
