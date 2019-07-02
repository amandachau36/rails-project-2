class Token < ApplicationRecord


  require 'json'
  # require 'httparty'



  def self.token_request_from_domain


    credentials = Rails.application.secrets.domain_client_and_secret_id
    puts 'credential: ', credentials
    body = "grant_type=client_credentials&scope=api_agencies_read%20api_listings_read"
    # body = "grant_type=client_credentials"
    headers = {
      "Authorization" => "Basic #{credentials}",
      "Content-Type" => "application/x-www-form-urlencoded;charset=UTF-8"
    }
    url = 'https://auth.domain.com.au/v1/connect/token'
    response = HTTParty.post(url, body: body, headers: headers)
    puts 'ghell=o'
    puts response


  end

end
