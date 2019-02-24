class Api::PeopleController < ApplicationController

  def index
    @people = People.all
    render "index.json.jbuilder"
  end
  
end
