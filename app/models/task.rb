class Task < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 20}, uniqueness: true
  validates :done, inclusion: { in: [true, false] }
end
