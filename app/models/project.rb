class Project < ApplicationRecord
  has_many_attached :photos
  validates :category, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :client, presence: true
end
