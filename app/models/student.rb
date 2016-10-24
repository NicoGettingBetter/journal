class Student < ApplicationRecord
  has_many :student_groups
  has_many :groups, through: :student_groups

  has_many :student_punched_cards
  has_many :punched_cards, through: :student_punched_cards

  has_many :comments
  has_many :pages, through: :comments
end
