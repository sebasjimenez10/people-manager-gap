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

FactoryGirl.define do
  factory :person do
    first_name 'TestName'
    last_name 'TestLastname'
    email 'test@test.com'
    job ''
    bio 'Tester'
    gender 'm'
    birthdate '2016-05-07'
    picture ''

    factory :person_no_firstname do
      first_name ''
    end

    factory :person_long_firstname do
      first_name 'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabca'
    end

    factory :person_no_lastname do
      last_name ''
    end

    factory :person_long_lastname do
      last_name 'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabca'
    end

    factory :person_no_email do
      email ''
    end

    factory :person_long_email do
      email 'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcaabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcaabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcaabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabca@gmail.com'
    end

    factory :person_invalid_email do
      email 'kjabsd.)@asdnot_valid.co%'
    end

    factory :person_long_job do
      job 'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabca'
    end

    factory :person_no_bio do
      bio ''
    end

    factory :person_no_birthdate do 
      birthdate ''
    end

    factory :person_birthdate_future do 
      birthdate Date.today + 1.day
    end

  end
end
