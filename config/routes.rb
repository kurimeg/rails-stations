Rails.application.routes.draw do
  get 'movies' => 'movies#index'
  get 'admin/movies' => 'admin/movies#index'
  get 'admin/movies/new' => 'admin/movies#new'
  post 'admin/movies'=> 'admin/movies#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
