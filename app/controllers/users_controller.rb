class UsersController < ApplicationController

  # before_action :authenicate_user, expect: [:create]

  # Required for using JWT
  skip_before_action :verify_authenticity_token



  def create
# you are here
    # user = User.create
    # p params[:name]

    newUser = User.create user_params
    puts "NEW USER"
    p newUser

    # name: params[:name], email: params[:email], password: params[:password]

    if newUser.persisted?
    # this is not that necessary
      puts "========================= SUCCESS "
      render json: {created: true}
    else
    # status 422 means it will go to .catch errors
      puts "---------------- FAIL "
      render json: { errors: newUser.errors.full_messages, }, status: 422

    end

  end

  def ajax_test
    render json: Listing.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end



end
