class Token < ApplicationRecord


  require 'json'

  #PsudoCode
  # Create a model used for storing the Domain API Token
  # Create methods within the model that are used to return a token from the database
  # If there is no token in the database create a new token

  # Generate a new token
  def self.token_request_from_domain

    credentials = Rails.application.secrets.domain_client_and_secret_id
    puts 'credential: ', credentials
    body = "grant_type=client_credentials&scope=api_agencies_read%20api_listings_read"
    headers = {
      "Authorization" => "Basic #{credentials}",
      "Content-Type" => "application/x-www-form-urlencoded;charset=UTF-8"
    }
    url = 'https://auth.domain.com.au/v1/connect/token'
    response = HTTParty.post(url, body: body, headers: headers)

    return response
  end

  #This is the method that is called in the token_controller
  def self.access_token

    t = Token.last.current_token
    puts 't is:', t

    expiry = Token.last.expiry_time
    puts 'the time to expiry before if is: ', expiry
    current_time = Time.now


    # we seed Token current_token as 1 originally
    if t == '1' || expiry < current_time
      puts 'Token is empty'
      get_token = Token.token_request_from_domain
      t = get_token["access_token"]
      expiry = get_token['expires_in']
      puts 'token expires in: ', expiry
      tokenWillExpire = Time.now + expiry
      # tokenWillExpire += expiry
      puts 'Time This Token will expire: ', tokenWillExpire

      puts 'Time This Token before update: ', tokenWillExpire

      # strTokenEx = tokenWillExpire.strftime("%Y-%m-%d %r %z")
      # Update the model with the token now
      Token.update_all(current_token: t, expiry_time: tokenWillExpire) #Time.strptime(strTokenEx,"%Y-%m-%d %r %z") )
    end


    puts "the token is: ", t
    return t
  end

end
