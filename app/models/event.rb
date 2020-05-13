class Event < ApplicationRecord
  belongs_to :user
  has_many :event_organizations, dependent: :destroy
  has_many :organizations, through: :event_organizations
  has_many :comments, dependent: :destroy
  has_many :event_guests, dependent: :destroy
  has_many :users, through: :event_guests
  has_many :event_options, dependent: :destroy
end
