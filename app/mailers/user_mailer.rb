# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def create_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'user@gmail.com', subject: "A new entry for #{object.class} has one created"
  end

  def update_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: 'user@gmail.com', subject: "An entry for #{object.class} has been updated"
  end

  def delete_notification(object)
  @object = object
    @object_count = object.class.count

    mail to: 'user@gmail.com', subject: "An entry for #{object.class} has been deleted" 
  end
end
