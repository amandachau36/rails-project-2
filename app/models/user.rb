class User < ApplicationRecord
  has_and_belongs_to_many :listings
  has_many :comments
  # necessary for bcrpyt and to link password to password_digest
  has_secure_password
end
