class PunchedCard < ApplicationRecord
  belongs_to :subject_group
  
  has_many :student_punched_cards
  has_many :students, through: :student_punched_cards
end
