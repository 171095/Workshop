class CourseRegistration < ApplicationRecord
  
  validates :first_name, :last_name, :email, :contact, presence: true
  belongs_to :course, optional: true

end
