class UsersController < ApplicationController

  # before_action :authenicate_user, expect: [:create]

  # Required for using JWT
  skip_before_action :verify_authenticity_token



  def create
# you are here
    # user = User.create
    # p params[:name]

    newUser = User.create name: params[:name], email: params[:email], password: params[:password]

    # if newUser.persisted?
    #
    #   render json: {created: true}
    #
    # end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end



end
