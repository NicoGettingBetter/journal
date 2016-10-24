class Group < ApplicationRecord
  has_many :student_groups
  has_many :students, through: :student_groups

  has_many :subject_groups
  has_many :subjects, through: :subject_groups

  has_and_belongs_to_many :pages
end
