class Api::PeopleController < ApplicationController

  def index
    @people = Person.all
    render "index.json.jbuilder"
  end

  def show
    @person = Person.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

end
