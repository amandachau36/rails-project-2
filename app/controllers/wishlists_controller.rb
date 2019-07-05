class WishlistsController < ApplicationController
  before_action :authenticate_user
  skip_before_action :verify_authenticity_token

  # Checks if user already has listing in their wishlist
  # If not, creates a listing & adds adds association to the user
  def add

    # checkIfInDatabase = Listing.find_by(domain_id: params[:domainId])
    checkIfInDatabase = User.last.listings.find_by(domain_id: params[:domainId])
    puts checkIfInDatabase

    if checkIfInDatabase.nil?
      listing = Listing.create headline:params[:headline], image:params[:image], address:params[:address], latitude: params[:latitude], longitude: params[:longitude], domain_id: params[:domainId]
      puts 'current_user is:', current_user
      current_user.listings << listing
    else
      puts "This Property is already in the database "
    end

  end

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
