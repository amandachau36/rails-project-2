class ApplicationController < ActionController::Base
  include Knock::Authenticable

  # required for using a namespaced model (not rails --api)
  # private
  #   def authenticate_v1_user
  #     authenticate_for V1::User
  #   end
end
