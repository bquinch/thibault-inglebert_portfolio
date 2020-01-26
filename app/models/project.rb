class Project < ApplicationRecord
  has_many_attached :photos
  validates :category, :description, :client, presence: true
end
