class TokenController < ApplicationController

  # Render JSON of the Domain Token from the Token Model
  def show
    @domain_token = Token.access_token
    puts @domain_token
    render json: {data: @domain_token}
  end

end
