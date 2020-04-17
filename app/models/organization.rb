class Organization < ApplicationRecord
  has_one :user
  has_many :event_organizations
  has_many :organization_users
end
