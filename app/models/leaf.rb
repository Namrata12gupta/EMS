# frozen_string_literal: true

class Leaf < ApplicationRecord
  belongs_to :user
  validate :not_past_date, on: :create
  enum :leave_status, %i[accepted rejected cancel]

  def not_past_date
    errors.add(:from_date, 'not in past') if from_date < Date.today
    errors.add(:till_date, 'not in past') if till_date < Date.today
  end
end
