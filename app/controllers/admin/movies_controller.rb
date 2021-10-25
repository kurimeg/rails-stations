class Admin::MoviesController < ApplicationController
  before_action :set_status, only: [:new, :create, :edit, :update]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save 
        flash[:success] = '映画を登録しました。'
        redirect_to controller: :movies, action: :index
    else
      flash.now[:danger] = '映画の登録に失敗しました。'
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      flash[:success] = '映画を更新しました。'
      redirect_to controller: :movies, action: :index
    else
      flash.now[:danger] = '映画の更新に失敗しました。'
      render :edit
    end
  end

  private
    def movie_params
      params.require(:movie).permit(:name, :year, :is_showing, :description, :image_url)
    end

    def set_status
      @status = [
        ['上映中', true],
        ['上映予定', false]
      ]
    end
end
