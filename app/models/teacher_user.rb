class TeacherUser < ApplicationRecord
  belongs_to :teacher

  has_many :pages
end
