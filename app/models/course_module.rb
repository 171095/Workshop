class CourseModule < ApplicationRecord
  belongs_to :course, optional: true
  has_many :chapters
end
