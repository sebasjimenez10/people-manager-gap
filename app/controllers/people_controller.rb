class PeopleController < ApplicationController

  before_filter :load_person, only: [:show, :edit, :destroy, :update]
  before_filter :init_person, only: :create

  after_filter :notify, only: [:create, :destroy]

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
    if @person.save
      redirect_to person_path(@person.id)
    else
      flash[:error] = @person.errors.full_messages
      redirect_to new_person_path
    end
  end

  def edit
  end

  def update
    unless @person.update permit_person
      flash[:notice] = @person.errors.full_messages
    end
    redirect_to person_path(@person.id)
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

  def permit_person
    params.require(:person).permit(:first_name, :last_name, :email, :job, :bio, :gender, :birthdate, :picture)
  end

  def init_person
    person_params = permit_person
    @person = Person.new person_params
    @person.birthdate = Date.strptime(person_params[:birthdate], "%m/%d/%Y") if person_params[:birthdate].present?
  end

  def notify
    Resque.enqueue(
      NotifyUsersWorker,
      :deleted,
      @person.first_name,
      @person.last_name
    ) if params[:action] == 'destroy'
    
    Resque.enqueue(
      NotifyUsersWorker,
      :created,
      @person.first_name,
      @person.last_name
    ) if params[:action] == 'create'
  end

end
