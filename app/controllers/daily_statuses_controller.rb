# frozen_string_literal: true

class DailyStatusesController < ApplicationController
  def create
    date = Date.today
    daily_status = current_user.daily_statuses.create(date: date, daily_status: params[:daily_status])
    redirect_to daily_statuses_path
  end

  def edit
    @daily_status = DailyStatus.find_by_id params[:id]
  end

  def update
    daily_status = current_user.daily_statuses.last.update(daily_status_params)
    redirect_to daily_statuses_path
  end

  private

  def daily_status_params
    params.require(:daily_status).permit(:daily_status, :date)
  end
end
