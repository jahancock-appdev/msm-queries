class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details
  the_id = params.fetch("an_id").to_i

  @the_actor = Actor.where({:id => the_id}).first
  @roles = Character.where({:actor_id => the_id})
  render({ :template => "actor_templates/show.html.erb"})
  end

end
