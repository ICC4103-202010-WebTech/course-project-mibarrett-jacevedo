class OrganizationUser < ApplicationRecord
  belongs_to :organization
  has_many :users
end
