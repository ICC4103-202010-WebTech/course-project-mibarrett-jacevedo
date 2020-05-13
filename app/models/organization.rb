class Organization < ApplicationRecord
  belongs_to :user
  has_many :event_organizations, dependent: :destroy
  has_many :events, through: :event_organizations, dependent: :destroy
  has_many :organization_users, dependent: :destroy
  has_many :users, through: :organization_users
end
