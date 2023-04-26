class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def eldest

    @oldest_director = Director.where.not({ :dob => nil }).order( { :dob => :asc }).first
    
    render({ :template => "director_templates/eldest.html.erb"})
  end
end
