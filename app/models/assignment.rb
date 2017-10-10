class Assignment < ApplicationRecord
  belongs_to :chapter
  has_many :problems, inverse_of: :assignment
  accepts_nested_attributes_for :problems, reject_if: :all_blank, allow_destroy: true
end
