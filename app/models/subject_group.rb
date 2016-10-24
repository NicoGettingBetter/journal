class SubjectGroup < ApplicationRecord
  belongs_to :subject
  belongs_to :group

  has_many :punched_cards
end