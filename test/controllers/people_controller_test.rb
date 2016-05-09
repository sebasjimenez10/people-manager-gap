require 'test_helper'

describe PeopleController do

  describe 'index' do
    it 'should list all available people' do
      get :index
      assert_response :success
      assert_not_nil assigns(:people)
    end

    it 'should show an empty list' do
      Person.destroy_all
      get :index
      assert_response :success
      assert_empty assigns(:people)
    end  
  end

  describe 'show' do
    before do
      @someone = create :person
    end

    it 'should assign person' do
      get :show, id: @someone.id
      assert_response :success
      assert_not_nil assigns(:person)
    end

    it 'should not assign person when id invalid' do
      get :show, id: 'fake_id'
      assert_response :redirect
    end
  end

  describe 'new' do
    it 'should initialize an empty person' do
      get :new
      assert_response :success
      assert_not_nil assigns(:person)
    end
  end

  describe 'destroy' do
    before do
      @person = create :person
    end

    it 'should remove the person' do
      delete :destroy, id: @person.id
      assert_response :redirect
    end
  end

  describe 'create' do
    before do
      @new_person = build :person
      @people_count = Person.count
    end
    it 'should create a new person' do
      post :create, person: @new_person.attributes.merge({'birthdate' => '05/07/1990'})
      assert_response :redirect
      assert_equal @people_count, Person.count - 1
    end
  end

  describe 'edit' do
    before do
      @person = create :person
    end

    it 'should load the person' do
      get :edit, id: @person.id
      assert_response :success
      assert_not_nil assigns(:person)
    end
  end

  describe 'update' do
    before do
      @person = create :person
      @previous_name = @person.first_name
    end

    it 'should update the name' do
      patch :update, id: @person.id, person: @person.attributes.merge({'first_name' => 'Updated Name'})
      assert_response :redirect
      assert_equal 'Updated Name', Person.find(@person.id).first_name
    end
  end
end
