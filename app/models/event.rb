class Event < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :event_votes
  has_many :guests
  belongs_to :organization_event
end
