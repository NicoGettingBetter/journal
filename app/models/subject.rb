class Subject < ApplicationRecord
  has_many :subject_groups
  has_many :groups, through: :subject_groups

  has_many :pages
end
