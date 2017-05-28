class User < ApplicationRecord
  # Include default devise modules.
  # :rememberable, :trackable, :validatable,
  # :confirmable, :omniauthable
  devise :database_authenticatable, :registerable, :recoverable
  include DeviseTokenAuth::Concerns::User
end
