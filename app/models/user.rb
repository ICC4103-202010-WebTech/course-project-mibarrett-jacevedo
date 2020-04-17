class User < ApplicationRecord
  has_many :events
  has_many :comments
  has_many :event_votes
  belongs_to :organization

  validates :username, :email, presence: true
  validates :username, uniqueness: true
  validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
end
