class Organization < ApplicationRecord
  belongs_to :user
  has_many :event_organizations
  has_many :events, through: :event_organizations
  has_many :organization_users
  has_many :users, through: :organization_users
end
