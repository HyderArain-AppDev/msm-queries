class MovieController < ApplicationController
  def movie
    @movies_arr = Movie.all
    render(:template => "/misc_templates/all_mov.html.erb")
  end
end
