class PeopleController < ApplicationController

  before_filter :load_person, only: [:show, :edit, :destroy]

  def index
    @people = sort_people
  end

  def show
    redirect_to people_path if !@person.present?
  end

  def destroy
    @person.destroy
    return redirect_to people_path if @person.destroyed?
    redirect_to :back
  end

  private 

  def sort_people
    Person.order(first_name: :asc, last_name: :asc)
  end

  def load_person
    @person = Person.find_by id: params[:id]
  end

end
