class Problem < ApplicationRecord
  belongs_to :assignment, optional: true
end
