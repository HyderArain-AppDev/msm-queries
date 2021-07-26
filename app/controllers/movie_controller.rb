class MovieController < ApplicationController
  def movie
    @movies_arr = Movie.all
    render(:template => "/misc_templates/all_mov.html.erb")
  end
  def details
    @mov_id = params.fetch("mov_id").to_i
    @dir_id = Movie.where({:id => @mov_id}).at(0).director_id
    @dir = Director.where({:id => @dir_id}).at(0).name
    render(:template => "/misc_templates/movie_details.html.erb")
  end
end
