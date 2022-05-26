# frozen_string_literal: true

class Leave < ApplicationRecord
  belongs_to :user
  validate :not_past_date
  enum :leave_status, [ :accepted, :rejected, :cancel ]

  def not_past_date
    if self.from_date < Date.today
      errors.add(:from_date, 'not in past')
    end
  end
end

