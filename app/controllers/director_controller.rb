class DirectorController < ApplicationController
  def director
    @directors_arr = Director.all

      
    render(:template => "/misc_templates/all_dir.html.erb")
  end
  def details
    @dir_id = params.fetch("id")
    render(:template => "/misc_templates/direct_details.html.erb")
  end
  def youngest
    render(:template => "/misc_templates/young_dir.html.erb")
  end
  def eldest
    render(:template => "/misc_templates/old_dir.html.erb")
  end

end
