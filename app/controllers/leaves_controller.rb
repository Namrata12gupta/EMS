# frozen_string_literal: true

class LeavesController < ApplicationController
  def show
    @leave = Leave.find(params[:id])
  end

  def new
    @leaves = Leave.all
    @leave = Leave.new
  end

  def create
    @leave = Leave.new(leave_params)
    if @leave.save
      redirect_to @leave
    else
      render :new
    end
  end

  def leave_params
    params.require(:leave).permit(:leave_type, :from_date, :till_date, :leave_starts, :leave_end, :total_days,
                                  :reason, :user_id)
  end
end
