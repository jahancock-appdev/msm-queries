Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  
  #Note that rails finds matches in routes from top to bottom which is why won't match eldest
  #Static routes must come above dynamic routes
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

end
