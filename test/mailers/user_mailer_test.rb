# frozen_string_literal: true

require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test 'create_notification' do
    mail = UserMailer.create_notification
    assert_equal 'Create notification', mail.subject
    assert_equal ['to@example.org'], mail.to
    assert_equal ['from@example.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end

  test 'update_notification' do
    mail = UserMailer.update_notification
    assert_equal 'Update notification', mail.subject
    assert_equal ['to@example.org'], mail.to
    assert_equal ['from@example.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end

  test 'delete_notification' do
    mail = UserMailer.delete_notification
    assert_equal 'Delete notification', mail.subject
    assert_equal ['to@example.org'], mail.to
    assert_equal ['from@example.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end
end
