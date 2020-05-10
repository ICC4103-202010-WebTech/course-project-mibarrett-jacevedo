class Event < ApplicationRecord
  belongs_to :user
  has_many :event_organizations
  has_many :organizations, through: :event_organizations
  has_many :comments
  has_many :event_guests
  has_many :users, through: :event_guests
  has_many :event_options
end
