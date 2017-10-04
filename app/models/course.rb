class Course < ApplicationRecord
  validates :name, :description, :course_fees, :course_duration, presence: true
  mount_uploader :banner_image, ImageUploader
  has_many :faqs
end
