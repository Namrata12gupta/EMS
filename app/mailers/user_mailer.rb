# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def create_notification
    @object = object
    @object_count = object.class.count

    mail to: 'payal@gmail.com', subject: "A new entry for #{object.class} has one created"
  end

  def update_notification; end

  def delete_notification; end
end
