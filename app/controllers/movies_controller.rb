class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
end

# id: 1,
# name: "name",
# year: "year",
# description: "description",
# image_url: "image_url",
# is_showing: 0,
# created_at: Time.now,
# updated_at: Time.now
