class NotifyUsersWorker
  @queue = :notifications

  def self.perform(event = nil, first_name, last_name)
    case event
    when "created"
      # Send created email
      Person.all.each do |person|
        PersonMailer.user_created(person.id, first_name, last_name).deliver_now
      end
    when "deleted"
      # Send deleted email
      Person.all.each do |person|
        PersonMailer.user_deleted(person.id, first_name, last_name).deliver_now
      end
    end
  end
end
