class Event < ApplicationRecord
  belongs_to :user
  has_many :event_organizations
  has_many :comments
  has_many :event_votes
  has_many :event_guests
end
