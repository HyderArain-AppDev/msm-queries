Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "director", :action => "director" })
  get("/directors/:id", { :controller => "director", :action => "details" })
  get("/directors/youngest", { :controller => "director", :action => "youngest" })
  get("/directors/eldest", { :controller => "director", :action => "eldest" })
  get("/movies", { :controller => "movie", :action => "movie" })
  get("/actors", { :controller => "actor", :action => "actor" })

end
