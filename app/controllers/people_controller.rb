class PeopleController < ApplicationController

  before_filter :load_person, only: [:show, :edit, :destroy]
  before_filter :init_person, only: :create

  def index
    @people = sort_people
  end

  def show
    redirect_to people_path unless @person.present?
  end

  def new
    @person = Person.new
  end

  def create
    @person.save if @person.valid?
    if @person.persisted?
      redirect_to people_path
    else
      flash[:notice] = @person.errors
      redirect_to new_person_path
    end
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

  def init_person
    person_params = params.require(:person).permit(:first_name, :last_name, :email, :job, :bio, :gender, :birthdate, :picture)
    @person = Person.new person_params
    @person.birthdate = Date.strptime(person_params[:birthdate], "%m/%d/%Y")
  end

end
