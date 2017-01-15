class Task < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 20}, uniqueness: true
  validates :done, inclusion: { in: [true, false] }

  def self.to_do
    Task.all.reject{ |t| t.done? }
  end

  def self.done
    Task.all.select{ |t| t.done? }
  end

end
