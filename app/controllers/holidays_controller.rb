# frozen_string_literal: true

class HolidaysController < ApplicationController
  def index
    @holidays = Holiday.all
  end

  def show
    @holiday = Holiday.find(params[:id])
  end

  def new
    @holiday = Holiday.new
  end

  def create
    @holiday = Holiday.new(holiday_params)
    if @holiday.save
      redirect_to holidays_path
    else
      render :new
    end
  end

  private

  def holiday_params
    params.require(:holiday).permit(:holiday_name, :date)
  end
end
