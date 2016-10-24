class Comment < ApplicationRecord
  belongs_to :page
  belongs_to :student
end