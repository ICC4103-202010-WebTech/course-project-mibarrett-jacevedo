class User < ApplicationRecord
  has_many :events
  has_many :comments
  has_many :event_votes
  belongs_to :organization
end
