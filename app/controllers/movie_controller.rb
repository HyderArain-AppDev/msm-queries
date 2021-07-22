class MovieController < ApplicationController
  def movie
    render(:template => "/misc_templates/all_mov.html.erb")
  end
end
