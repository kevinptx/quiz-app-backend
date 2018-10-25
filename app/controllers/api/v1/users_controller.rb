class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def authenticate
    @user = User.find_or_create_by(user_params)
  
    render json: @user, status: :accepted
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.permit(:name)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
