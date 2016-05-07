# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(254)
#  job        :string(255)
#  bio        :text(65535)
#  gender     :string(1)
#  birthdate  :date
#  picture    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

describe Person do

  # Model validation tests
  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_presence_of(:email)
  should validate_presence_of(:birthdate)

  # Base person created by FactoryGirl
  describe 'valid Person' do 
    let(:person) { create :person }

    it 'must be valid' do
      person.valid?.must_equal true
    end
  end

  describe 'invalid Person' do
    describe 'empty first_name' do
      let(:person) { build :person_no_firstname }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:first_name].must_equal ["can't be blank"]
      end
    end

    describe 'very long first_name' do
      let(:person) { build :person_long_firstname }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:first_name].must_equal ["is too long (maximum is 75 characters)"]
      end
    end

    describe 'empty last_name' do
      let(:person) { build :person_no_lastname }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:last_name].must_equal ["can't be blank"]
      end
    end

    describe 'very long last_name' do
      let(:person) { build :person_long_lastname }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:last_name].must_equal ["is too long (maximum is 75 characters)"]
      end
    end

    describe 'empty email' do 
      let(:person) { build :person_no_email }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:email].must_equal ["can't be blank", "is invalid"]
      end
    end

    describe 'very long email' do 
      let(:person) { build :person_long_email }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:email].must_equal ["is too long (maximum is 254 characters)", "is invalid"]
      end
    end

    describe 'invalid email' do 
      let(:person) { build :person_invalid_email }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:email].must_equal ["is invalid"]
      end
    end

    describe 'not unique email' do 
      let(:person) { create :person }
      let(:person_two) { build :person }

      it 'is not valid' do
        person.valid?.must_equal true
        person_two.valid?.wont_equal true
        person_two.errors[:email].must_equal ["has already been taken"]
      end
    end

    describe 'very long job' do
      let(:person) { build :person_long_job }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:job].must_equal ["is too long (maximum is 75 characters)"]
      end
    end

    describe 'empty bio' do
      let(:person) { build :person_no_bio }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:bio].must_equal ["can't be blank"]
      end
    end

    describe 'empty birthdate' do
      let(:person) { build :person_no_birthdate }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:birthdate].must_equal ["can't be blank"]
      end
    end

    describe 'empty birthdate' do
      let(:person) { build :person_birthdate_future }

      it 'is not valid' do
        person.valid?.wont_equal true
        person.errors[:birthdate].must_equal ["can't be in the future"]
      end
    end
  end

end
