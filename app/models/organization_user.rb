class OrganizationUser < ApplicationRecord
  has_one :organization
  has_many :users
end
