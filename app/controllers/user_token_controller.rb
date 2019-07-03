class UserTokenController < Knock::AuthTokenController

  # Required for using JWT
  skip_before_action :verify_authenticity_token
  
end
