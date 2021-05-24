class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: [:profile]

  def profile
    render json: { user: current_user }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :created
    else
      render json: { error: "That email already exists, please use another." }, status: :not_acceptable
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end