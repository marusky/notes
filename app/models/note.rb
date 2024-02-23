class Note < ApplicationRecord
  validates :name, length: { minimum: 3 }
  validates :body, presence: true
end