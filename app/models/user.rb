class User < ApplicationRecord
  has_secure_password

  belongs_to :teacher

  has_many :pages
end
