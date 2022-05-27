# frozen_string_literal: true

class Leave < ApplicationRecord
  belongs_to :user
  validate :not_past_date, on: :create
  enum :leave_status, %i[accepted rejected cancel]

  def not_past_date
    errors.add(:from_date, 'not in past') if from_date < Date.today
  end
end
