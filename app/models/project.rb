class Project < ApplicationRecord
  has_many_attached :photos
  validates :category, presence: true
  validates :description, presence: true
  validates :client, presence: true
  validates :priority, presence: true, inclusion: { in: (1..20).to_a }

  attr_accessor :remove_photos
  after_save do
    Array(remove_photos).each { |id| photos.find_by_id(id).try(:purge) }
  end
end
