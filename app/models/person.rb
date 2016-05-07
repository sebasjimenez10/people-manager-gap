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

class Person < ActiveRecord::Base
  validates :first_name, length: { maximum: 75 }, presence: true
  validates :last_name, length: { maximum: 75 }, presence: true
  
  validates :email, length: { maximum: 254 }, presence: true, uniqueness: true, email: true
  validates :job, length: {maximum: 75}
  validates :bio, presence: true
  validates :birthdate, presence: true

  validate :birthdate_check

  def age
    return Date.today.year - birthdate.year if Date.today.month > birthdate.month
    Date.today.year - birthdate.year - 1
  end

  private 

  def birthdate_check
    if birthdate.present? && birthdate > Date.today
      errors.add :birthdate, 'can\'t be in the future'
    end
  end
end
