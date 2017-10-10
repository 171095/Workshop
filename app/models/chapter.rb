class Chapter < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  has_many :assignments
  belongs_to :course_module
end
