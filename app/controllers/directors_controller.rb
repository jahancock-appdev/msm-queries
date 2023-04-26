class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def eldest

    @oldest_director = Director.where.not({ :dob => nil }).order( { :dob => :asc }).first
    
    render({ :template => "director_templates/eldest.html.erb"})
  end


  def youngest

    @youngest_director = Director.where.not({ :dob => nil }).order( { :dob => :desc }).first
    
    render({ :template => "director_templates/youngest.html.erb"})
  end

  def director_details

    the_id = params.fetch("an_id").to_i

    @the_director = Director.where({:id => the_id}).first
    @filmography = Movie.where({:director_id => the_id})

    render({ :template => "director_templates/show.html.erb"})
  end
end
