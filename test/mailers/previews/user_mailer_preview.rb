# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/create_notification
  def create_notification
    UserMailer.create_notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/update_notification
  def update_notification
    UserMailer.update_notification
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/delete_notification
  def delete_notification
    UserMailer.delete_notification
  end
end
