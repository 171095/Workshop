class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  validates :name, :description, :course_fees, :course_duration, presence: true
  mount_uploader :banner_image, ImageUploader
  has_many :faqs
  has_many :course_modules
end
