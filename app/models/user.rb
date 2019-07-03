class User < ApplicationRecord
  has_and_belongs_to_many :listings
  has_many :comments

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  # necessary for bcrpyt and to link password to password_digest
  # also necessary for knock
  has_secure_password

  

end
