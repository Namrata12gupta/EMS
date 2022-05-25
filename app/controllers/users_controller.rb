# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:name, :father_name, :mother_name, :company_name, :designation, :country, :address, :phone_no,
                                 :pan_card, :adhar_card, :bank_name, :account_no, :password, :password_confirmation, :email, :role_id, :image)
  end
end
