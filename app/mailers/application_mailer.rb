# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'hr@example.com'
  layout 'mailer'
end
