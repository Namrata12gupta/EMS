# frozen_string_literal: true

class LeafsController < ApplicationController
  def index
    @leaves = current_user.leafs
  end

  def show
    @leave = current_user
  end

  def new
    @leave = Leaf.new
  end

  def create
    @leave = Leaf.new(leave_params)
    if @leave.save
      redirect_to leafs_path
    else
      render :new
    end
  end

  def update
    @leave = Leaf.find(params[:id])
    @leave.update(leave_status: params[:leave_status]) if @leave.till_date >= Time.now
    redirect_to leafs_path
  end

  def leave_params
    params.require(:leaf).permit(:leave_type, :from_date, :till_date, :leave_starts, :leave_end, :total_days,
                                 :reason, :user_id)
  end
end
