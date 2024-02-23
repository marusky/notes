class Item < ApplicationRecord
  validates :title, presence: true
  validates :expected_cost, comparison: { less_than: 50 }
end