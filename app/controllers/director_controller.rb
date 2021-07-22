class DirectorController < ApplicationController
  def director
    @directors_arr = Director
    
      
    render(:template => "/misc_templates/all_dir.html.erb")
  end
  def youngest
    render(:template => "/misc_templates/young_dir.html.erb")
  end
  def eldest
    render(:template => "/misc_templates/old_dir.html.erb")
  end

end
