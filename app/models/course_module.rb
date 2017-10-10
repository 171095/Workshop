class CourseModule < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  belongs_to :course, optional: true
  has_many :chapters
end
