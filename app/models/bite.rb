class Bite < ApplicationRecord
  belongs_to :biter, class_name: 'User'
  belongs_to :bitee, class_name: 'User'
  # 0 1 2 3
  enum status: [:unmatched, :pending, :bitten, :garlic]

end
