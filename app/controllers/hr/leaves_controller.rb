# frozen_string_literal: true

module Hr
  class LeavesController < ApplicationController
    def index
      @leaves = Leaf.all
    end

    def update
      @leave = Leaf.find(params[:id])
      @leave.update(leave_status: params[:leave_status])
      UserMailer.update_notification(@leave).deliver_now
      redirect_to hr_leaves_path
    end
  end
end
