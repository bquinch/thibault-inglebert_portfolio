class Project < ApplicationRecord
  has_many_attached :photos
  validates :category, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :client, presence: true
  validates :priority, presence: true, inclusion: { in: (1..20).to_a }
end
