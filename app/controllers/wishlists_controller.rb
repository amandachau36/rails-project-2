class WishlistsController < ApplicationController
  before_action :authenticate_user

  def index
    # current_user is from the knock gem
    # include listings associations
    render json: current_user, include: { listings: {} }, only: [:name]
  end

end
