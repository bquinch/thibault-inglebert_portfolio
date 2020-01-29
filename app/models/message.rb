class Message < ApplicationRecord
  validates :name, :email, :subject, :content, presence: true
end
