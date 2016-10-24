class StudentPunchedCard < ApplicationRecord
  belongs_to :student 
  belongs_to :punched_card
end