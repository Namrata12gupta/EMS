# frozen_string_literal: true

class LeavesController < ApplicationController
  def index
    @leaves = Leave.all
  end

  def show
    @leave = Leave.find(params[:id])
  end

  def new
    @leave = Leave.new
  end

  def create
    @leave = Leave.new(leave_params)
    if @leave.save
      redirect_to leaves_path
    else
      render :new
    end
  end

  def update
    @leave = Leave.find(params[:id])
    @leave.update(leave_status: params[:leave_status])
    redirect_to leaves_path
  end

  def leave_params
    params.require(:leave).permit(:leave_type, :from_date, :till_date, :leave_starts, :leave_end, :total_days,
                                  :reason, :user_id)
  end
end
