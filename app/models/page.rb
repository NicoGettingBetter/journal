class Page < ApplicationRecord
  belongs_to :user
  belongs_to :subject

  has_many :comments
  has_many :students, through: :comments

  has_and_belongs_to_many :groups
end
