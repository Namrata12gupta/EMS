# frozen_string_literal: true

class AttendancesController < ApplicationController
  def show
    @attendances = current_user.attendances.order(:checkin_time).page params[:page]
  end

  def create
    attendance = current_user.attendances.create(checkin_time: Time.zone.now)
    redirect_to user_path(attendance)
  end

  def update
    attendance = current_user.attendances.last.update(checkout_time: Time.zone.now)
    redirect_to user_attendance_path
  end
end
