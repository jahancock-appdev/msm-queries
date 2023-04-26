Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  
  #Directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })

  
  #Note that rails finds matches in routes from top to bottom which is why won't match eldest
  #Static routes must come above dynamic routes
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  #Movies
  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:an_id", { :controller => "movies", :action => "movie_details"})

  #Actors
  get("/actors", { :controller => "actors", :action => "index"})
  get("/actors/:an_id", { :controller => "actors", :action => "actor_details"})
end
