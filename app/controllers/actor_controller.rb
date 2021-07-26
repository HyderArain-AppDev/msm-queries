class ActorController < ApplicationController
  def actor
    render(:template => "/misc_templates/all_act.html.erb")
  end
  def details
    @act_id = params.fetch("act_id").to_i
    
    @the_movies = Character.where({:actor_id => @act_id})


    render(:template => "/misc_templates/actor_details.html.erb")
  end
  
end
