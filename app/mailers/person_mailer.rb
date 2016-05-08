class PersonMailer < ApplicationMailer
  def user_created(user_id, first_name, last_name)
    @person = Person.find user_id
    @first_name = first_name
    @last_name = last_name
    mail(to: @person.email, subject: 'People App - New person added')
  end

  def user_deleted(user_id, first_name, last_name)
    @person = Person.find user_id
    @first_name = first_name
    @last_name = last_name
    mail(to: @person.email, subject: 'People App - Person recently deleted')
  end
end
