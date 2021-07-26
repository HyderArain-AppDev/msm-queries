class DirectorController < ApplicationController
  def director
    @directors_arr = Director.all

      
    render(:template => "/misc_templates/all_dir.html.erb")
  end
  def details
    @dir_id = params.fetch("dir_id").to_i
    
    @the_movies = Movie.where({:director_id => @dir_id})


    render(:template => "/misc_templates/direct_details.html.erb")
  end
  def youngest
    @date = Director.maximum(:dob)
    @date = @date.strftime("%B %e, %Y")
    @the_dir = Director.where({:dob => @date}).at(0).name

    render(:template => "/misc_templates/young_dir.html.erb")
  end
  def eldest
    @date = Director.minimum(:dob)
    @date = @date.strftime("%B %e, %Y")
    @the_dir = Director.where({:dob => @date}).at(0).name
    render(:template => "/misc_templates/old_dir.html.erb")
  end

end
