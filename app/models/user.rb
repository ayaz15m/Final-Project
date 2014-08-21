require 'securerandom'
require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password
  include BCrypt

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password_digest, presence: true
  validates :password, length: {minimum: 8}
end
