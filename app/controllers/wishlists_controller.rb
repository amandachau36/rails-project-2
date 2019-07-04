class WishlistsController < ApplicationController
  before_action :authenticate_user
  skip_before_action :verify_authenticity_token

  def index
    # current_user is from the knock gem
    # include listings associations but only include name
    render json: current_user, include: { listings: {} }, only: [:name]
  end

  def destroy
    listing = Listing.find params[:id]

    p listing
    p current_user

    current_user.listings.delete(listing)


    render json: current_user, include: { listings: {} }, only: [:name]

    # def destroy - use method below if only using a join table and not a join table that is also a model
    # user = @current_user
    # booking = Schedule.find params[:id]
    # user.classes_attending.delete(booking)

    # render json: {deleted: true}


  end



end
