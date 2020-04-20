class Organization < ApplicationRecord
  belongs_to :user
  has_many :event_organizations
  has_many :organization_users
end
