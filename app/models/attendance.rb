# frozen_string_literal: true

class Attendance < ApplicationRecord
  belongs_to :user
  before_update :total_working_hours
  paginates_per 5

  private

  def total_working_hours
    total = (checkout_time - checkin_time).to_i
    hours = (total / 3600).to_i
    minutes = ((total - (hours * 3600)) / 60).to_i
    seconds = (total - (hours * 3600) - (minutes * 60)).to_i
    self.working_hours = "#{hours} hour : #{minutes} minutes : #{seconds} seconds"
  end
end
