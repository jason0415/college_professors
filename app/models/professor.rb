class Professor < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :professors_subjects
  has_many :subjects, through: :professors_subjects
end
