class Event < ApplicationRecord
  belongs_to :user
  has_many :event_organizations
  has_many :comments
  has_many :event_guests
  has_many :event_options
end
