class Message < ApplicationRecord
  MAILREGEX = /\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b/
  validates :name, :subject, :content, presence: true
  validates :email, format: { with: MAILREGEX }
end
